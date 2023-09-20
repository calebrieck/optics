TARGET = bin/main
SRC = src/main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	@mkdir -p $(dir $(TARGET))
	g++ $(SRC) -o $(TARGET) -std=c++17 -framework Cocoa -framework OpenGL -framework IOKit -lglfw3 -I/opt/homebrew/Cellar/glew/2.2.0_1/include -L/opt/homebrew/Cellar/glew/2.2.0_1/lib -lGLEW

clean:
	rm -f $(TARGET)

