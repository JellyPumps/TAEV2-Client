//
// Created by Sarthak Rai on 1/1/25.
//

#pragma once

#include <string>

#include "SFML/Graphics.hpp"

class InfiniteScrolling {
    public:
    InfiniteScrolling(const std::vector<std::string> &image_paths, const std::vector<float> &scroll_speeds,
                      const sf::Vector2u &window_size);

    void update(float delta_time);
    void render(sf::RenderWindow& window);
    static void add_sprite_to_batch(sf::VertexArray& vertex_array, const sf::Sprite& sprite);

    private:
    struct Layer {
        sf::Texture texture_;

        sf::Sprite sprite_;
        sf::Sprite sprite_copy_;

        sf::Vector2f main_position_;
        sf::Vector2f copy_position_;

        float scroll_speed_;
    };

    std::vector<Layer> layers_;
    sf::Vector2u window_size_;
};
