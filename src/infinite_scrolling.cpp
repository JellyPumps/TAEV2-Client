//
// Created by Sarthak Rai on 1/1/25.
//

#include "infinite_scrolling.hpp"

InfiniteScrolling::InfiniteScrolling(const std::vector<std::string> &image_paths,
    const std::vector<float> &scroll_speeds, const sf::Vector2u &window_size) : window_size_(window_size) {

    if (image_paths.size() != scroll_speeds.size()) throw std::runtime_error("Images and scroll speeds must have the same size");

    for (size_t i = 0; i < image_paths.size(); i++) {
        Layer layer;

        if (!layer.texture_.loadFromFile(image_paths[i])) throw std::runtime_error("Failed to load image file");

        layer.sprite_.setTexture(layer.texture_);
        layer.sprite_copy_.setTexture(layer.texture_);

        layer.main_position_ = sf::Vector2f(0, 0);
        layer.copy_position_ = sf::Vector2f(static_cast<float>(window_size_.x), 0);

        layer.scroll_speed_ = scroll_speeds[i];

        layers_.push_back(layer);
    }
}

void InfiniteScrolling::update(float delta_time) {
    for (auto &layer : layers_) {
        layer.main_position_.x += layer.scroll_speed_ * delta_time;
        layer.copy_position_.x += layer.scroll_speed_ * delta_time;

        const float sprite_width = layer.sprite_.getGlobalBounds().width;
        const float copy_width = layer.sprite_copy_.getGlobalBounds().width;

        // Handle reset for sprite positions
        if (layer.main_position_.x + sprite_width <= 0) layer.main_position_.x = layer.copy_position_.x + copy_width;
        if (layer.copy_position_.x + copy_width <= 0) layer.copy_position_.x = layer.main_position_.x + sprite_width;

        // Set the new positions
        layer.sprite_.setPosition(layer.main_position_);
        layer.sprite_copy_.setPosition(layer.copy_position_);
    }
}

void InfiniteScrolling::render(sf::RenderWindow &window) {
    sf::VertexArray quads(sf::Quads);
    for (const auto& layer : layers_) {
        add_sprite_to_batch(quads, layer.sprite_);
        add_sprite_to_batch(quads, layer.sprite_copy_);
    }

    window.draw(quads);
}

void InfiniteScrolling::add_sprite_to_batch(sf::VertexArray& vertex_array, const sf::Sprite &sprite) {
    sf::FloatRect bounds = sprite.getGlobalBounds();
    sf::Vector2f position = sprite.getPosition();

    // Define the four corners of the sprite
    const float left = position.x;
    const float top = position.y;
    const float right = position.x + bounds.width;
    const float bottom = position.y + bounds.height;

    // Get texture coordinates
    const sf::Texture *texture = sprite.getTexture();
    const auto texture_rect = static_cast<sf::FloatRect>(sprite.getTextureRect());

    const float texture_left = texture_rect.left / texture->getSize().x;
    const float texture_top = texture_rect.top / texture->getSize().y;
    const float texture_right = (texture_left + texture_rect.width) / texture->getSize().x;
    const float texture_bottom = (texture_top + texture_rect.height) / texture->getSize().y;

    // Create quads for sprite and add to array
    vertex_array.append(sf::Vertex(sf::Vector2f(left, top), sf::Vector2f(texture_left, texture_top)));
    vertex_array.append(sf::Vertex(sf::Vector2f(right, top), sf::Vector2f(texture_right, texture_top)));
    vertex_array.append(sf::Vertex(sf::Vector2f(right, bottom), sf::Vector2f(texture_right, texture_bottom)));
    vertex_array.append(sf::Vertex(sf::Vector2f(left, bottom), sf::Vector2f(texture_left, texture_bottom)));

}
