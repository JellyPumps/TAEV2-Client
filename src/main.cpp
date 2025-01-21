#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

#include "imgui-SFML.h"
#include "imgui.h"

#include "infinite_scrolling.hpp"
#include "music.hpp"

int window_width = 800;
int window_height = 600;

int main() {
    sf::RenderWindow window(sf::VideoMode(window_width, window_height, 32), "Astrum Engine");
    ImGui::SFML::Init(window);
    Music background_menu_music("../assets/audio/bg_music.ogg", true, 50);

    std::vector<std::string> image_paths = {
        "../assets/images/3_0b.png",
        "../assets/images/2_0c.png",
        "../assets/images/1_0m.png",
        "../assets/images/0_2t.png",
        "../assets/images/0_1t.png",
        "../assets/images/0_0t.png",
    };

    std::vector<float> scroll_speeds = {
        -5.0f,
        -10.0f,
        -60.0f,
        -90.0f,
        -95.0f,
        -100.0f
    };

    InfiniteScrolling background_parallax(image_paths, scroll_speeds, window.getSize());

    sf::Clock clock;
    while (window.isOpen()) {
        sf::Event event;
        sf::Time delta = clock.restart();

        while (window.pollEvent(event)) {
            ImGui::SFML::ProcessEvent(event);
            if (event.type == sf::Event::Closed) window.close();
        }

        ImGui::SFML::Update(window, delta);
        background_parallax.update(delta.asSeconds());

        ImGui::Begin("Settings");
        ImGui::Text("FPS: %.2f", ImGui::GetIO().Framerate);
        ImGui::End();

        // Render
        window.clear(sf::Color(42, 41, 41));

        background_parallax.render(window);
        ImGui::SFML::Render(window);

        window.display();
    }

    background_menu_music.stop(2.0f);
    ImGui::SFML::Shutdown();
    return 0;
}

