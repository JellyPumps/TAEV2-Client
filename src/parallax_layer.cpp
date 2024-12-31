//
// Created by Sarthak Rai on 14/12/2024.
//

#include "parallax_layer.hpp"


void ParallaxLayer::init(const sf::Texture& texture, float speed, const sf::Vector2u& window_size) {
    texture_ = texture;
    speed_ = speed;
    sprites_ = create_parallax_layer(texture, window_size);
}

void ParallaxLayer::update(float delta_time, const sf::Vector2u& window_size) {
    for (auto& sprite : sprites_) {
        sprite.move(-speed_ * delta_time, 0);
    }

    for (auto& sprite : sprites_) {
        if (sprite.getPosition().x + sprite.getLocalBounds().width < 0) {
            reset_sprite_position(sprite, window_size);
        }
    }
}

void ParallaxLayer::draw(sf::RenderWindow& window) const {
    for (const auto& sprite : sprites_) {
        window.draw(sprite);
    }
}

std::vector<sf::Sprite> ParallaxLayer::create_parallax_layer(const sf::Texture& texture, const sf::Vector2u& window_size) {
    std::vector<sf::Sprite> sprites;
    float texture_width = static_cast<float>(texture.getSize().x);
    float texture_height = static_cast<float>(texture.getSize().y);

    float scale_x = static_cast<float>(window_size.x) / texture_width;
    float scale_y = static_cast<float>(window_size.y) / texture_height;

    int num_sprites = static_cast<int>(window_size.x / (texture_width * scale_x)) + 2;

    for (int i = 0; i < num_sprites; ++i) {
        sf::Sprite sprite(texture);
        sprite.setScale(scale_x, scale_y);
        sprite.setPosition(texture_width * i * scale_x, 0);
        sprites.push_back(sprite);
    }

    return sprites;
}

void ParallaxLayer::reset_sprite_position(sf::Sprite& sprite, const sf::Vector2u& window_size) const {
    float texture_width = sprite.getLocalBounds().width;
    sprite.setPosition(sprite.getPosition().x + texture_width * sprites_.size(), 0);
}
