TARGET = bin/main
SRC = src/main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	@mkdir -p $(dir $(TARGET))
	g++ $(SRC) -o $(TARGET) -std=c++17 -framework Cocoa -framework OpenGL -framework IOKit -lglfw3 -I/opt/homebrew/Cellar/glew/2.2.0_1/include -L/opt/homebrew/Cellar/glew/2.2.0_1/lib -lGLEW
	@if [ $$? -eq 0 ]; then \
		echo -e "\033[38;2;136;255;136mCompilation successful!\033[0m\n"; \
    fi

clean:
	rm -f $(TARGET)

