//
// Created by Sarthak Rai on 1/1/25.
//

#pragma once

#include <SFML/Graphics.hpp>
#include <thread>
#include <memory>
#include <stack>
#include <mutex>
#include <atomic>
#include <iostream>

class Scene {
    public:
    virtual ~Scene() = default;
    virtual void init() = 0;
    virtual void update() = 0;
    virtual void render(sf::RenderWindow& window) = 0;
    virtual void handle_events(const sf::Event& event) = 0;
};

using scene_ptr = std::shared_ptr<Scene>;