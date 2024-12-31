//
// Created by Sarthak Rai on 14/12/2024.
//

#pragma once

#include <iostream>

#include "parallax_layer.hpp"

class MenuBackground {
  public:
    void init(sf::RenderWindow& window);
    void update(sf::Time delta_time);
    void render(sf::RenderWindow &window) const;
    void reset();
  private:
    sf::Vector2u window_size;

    sf::Texture tex_trees_a_;
    sf::Texture tex_trees_b_;
    sf::Texture tex_trees_c_;
    sf::Texture tex_mountain_;
    sf::Texture tex_clouds_;
    sf::Texture tex_background_;

    ParallaxLayer trees_a_ = ParallaxLayer();
    ParallaxLayer trees_b_ = ParallaxLayer();
    ParallaxLayer trees_c_ = ParallaxLayer();
    ParallaxLayer mountain_ = ParallaxLayer();
    ParallaxLayer clouds_ = ParallaxLayer();

    sf::Sprite background_sprite_;
};
