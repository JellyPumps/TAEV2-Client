//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include <SFML/Graphics.hpp>

class ParallaxLayer {
public:
    ParallaxLayer() = default;
    void init(const sf::Texture& texture, float speed, const sf::Vector2u& window_size);
    void update(float delta_time, const sf::Vector2u& window_size);
    void draw(sf::RenderWindow& window) const;
    void set_speed(float new_speed) { speed_ = new_speed; }
    float& get_speed() { return speed_; }

private:
    sf::Texture texture_;
    float speed_;
    std::vector<sf::Sprite> sprites_;

    static std::vector<sf::Sprite> create_parallax_layer(const sf::Texture& texture, const sf::Vector2u& window_size);

    void reset_sprite_position(sf::Sprite& sprite, const sf::Vector2u& window_size) const;
};
