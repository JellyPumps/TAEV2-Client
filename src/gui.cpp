#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

#include "imgui-SFML.h"
#include "state_manager.hpp"
#include "menu_state.hpp"
#include "music.hpp"

int window_width = 800;
int window_height = 600;

int main() {
    sf::RenderWindow window(sf::VideoMode(window_width, window_height, 32), "Astrum Engine");
    ImGui::SFML::Init(window);
    StateManager state_manager;

    // Start bg music
    Music background_menu_music("../assets/audio/bg_music.ogg", true, 50);

    // Initial state
    MenuState* menu_state = new MenuState();
    menu_state->init(window);
    state_manager.push_state(menu_state);

    sf::Clock clock;
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            ImGui::SFML::ProcessEvent(event);
            state_manager.handle_events(event);
            if (event.type == sf::Event::Closed) window.close();
        }
        ImGui::SFML::Update(window, clock.restart());
        state_manager.update(clock.restart());

        // Render
        window.clear(sf::Color(42, 41, 41));
        state_manager.render();
        ImGui::SFML::Render(window);
        window.display();
    }

    background_menu_music.stop(nullptr, 2.0f, false);
    ImGui::SFML::Shutdown();
    return 0;
}

