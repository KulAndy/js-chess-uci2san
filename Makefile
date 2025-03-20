BUILD_DIR = build
OUTPUT_FILE = $(BUILD_DIR)/uci2pgn.js

all: $(OUTPUT_FILE)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(OUTPUT_FILE): $(BUILD_DIR)
	em++ main.cpp -o $(OUTPUT_FILE) -s MODULARIZE=1 -s EXPORT_ES6=1 -s ENVIRONMENT=web --bind

clean:
	rm -rf $(BUILD_DIR)
