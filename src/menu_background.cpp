//
// Created by Sarthak Rai on 14/12/2024.
//

#include "menu_background.hpp"

void MenuBackground::init(sf::RenderWindow& window) {
    window_size = window.getSize();

    tex_trees_a_.loadFromFile("../assets/images/landscape_0000_1_trees.png");
    tex_trees_b_.loadFromFile("../assets/images/landscape_0001_2_trees.png");
    tex_trees_c_.loadFromFile("../assets/images/landscape_0002_3_trees.png");
    tex_mountain_.loadFromFile("../assets/images/landscape_0003_4_mountain.png");
    tex_clouds_.loadFromFile("../assets/images/landscape_0004_5_clouds.png");
    tex_background_.loadFromFile("../assets/images/landscape_0005_6_background.png");

    trees_a_.init(tex_trees_a_, 115.0f, window_size);
    trees_b_.init(tex_trees_b_, 90.0f, window_size);
    trees_c_.init(tex_trees_c_, 60.0f, window_size);
    mountain_.init(tex_mountain_, 53.5f, window_size);
    clouds_.init(tex_clouds_, 20.5f, window_size);

    background_sprite_ = sf::Sprite(tex_background_);
}

void MenuBackground::update(sf::Time delta_time) {
    trees_a_.update(delta_time.asSeconds(), window_size);
    trees_b_.update(delta_time.asSeconds(), window_size);
    trees_c_.update(delta_time.asSeconds(), window_size);
    mountain_.update(delta_time.asSeconds(), window_size);
    clouds_.update(delta_time.asSeconds(), window_size);
}


void MenuBackground::render(sf::RenderWindow& window) const {
    window.draw(background_sprite_);
    clouds_.draw(window);
    mountain_.draw(window);
    trees_c_.draw(window);
    trees_b_.draw(window);
    trees_a_.draw(window);
}

void MenuBackground::reset() {
    tex_trees_a_.~Texture();
    tex_trees_b_.~Texture();
    tex_trees_c_.~Texture();
    tex_mountain_.~Texture();
    tex_clouds_.~Texture();
    tex_background_.~Texture();
    background_sprite_ = sf::Sprite();
}

