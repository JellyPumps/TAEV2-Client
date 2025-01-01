//
// Created by Sarthak Rai on 1/1/25.
//

#pragma once
#include <map>

#include "scene.hpp"

class SceneManager {
    public:
    SceneManager();
    ~SceneManager();

    void pop_scene(int scene_id);
    void set_scene(Scene* scene, bool push_to_stack);

    Scene* get_scene() const;

    private:
    std::map<int, Scene*> scenes_;
    std::stack<int> scene_stack_;

    int active_scene_id_ = 0;
    Scene* active_scene_ptr_ = nullptr;
};