//
// Created by Sarthak Rai on 1/1/25.
//

#include "scene_manager.hpp"

#include <iostream>

SceneManager::SceneManager() : active_scene_ptr_(nullptr), active_scene_id_(0) {
    std::cout << "Creating new scene manager..., no active scene" << std::endl;
}

SceneManager::~SceneManager() {
    if (active_scene_ptr_ != nullptr) {}

    scenes_.clear();
}

void SceneManager::pop_scene(int scene_id) {
    auto it = scenes_.find(scene_id);
    if (it == scenes_.end()) {
        std::cerr << "ERR: Scene not found" << std::endl;
        exit(EXIT_FAILURE);
    }

    if (active_scene_id_ == scene_id) {
        if (!scene_stack_.empty()) {
            int previous_scene_id = scene_stack_.top(); // Get previous scene ID
            scene_stack_.pop(); // Pop previous scene ID from stack

            active_scene_ptr_ = scenes_[previous_scene_id];
            active_scene_id_ = previous_scene_id;
        } else {
            active_scene_ptr_ = nullptr;
            active_scene_id_ = 0;
        }
    }

    scenes_.erase(it);
}

void SceneManager::set_scene(Scene* scene, bool push_to_stack) {
    if (scene == nullptr) {
        std::cerr << "ERR: Attempted to set a null scene!" << std::endl;
        exit(EXIT_FAILURE);
    }

    if (push_to_stack && active_scene_ptr_ != nullptr) scene_stack_.push(active_scene_id_);

    // Assign a new scene ID and add to map
    int new_scene_id = scenes_.size() > 0 ? scenes_.rbegin()->first + 1 : 0;
    scenes_[new_scene_id] = scene;

    // Set the new scene as the active scene
    active_scene_ptr_ = scene;
    active_scene_id_ = new_scene_id;

    scene->init();
}

Scene* SceneManager::get_scene() const {
    return active_scene_ptr_ == nullptr ? nullptr : active_scene_ptr_;
}
