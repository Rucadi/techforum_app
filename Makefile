CXX ?= g++
CXXFLAGS ?= -std=c++17
LDFLAGS ?= -lboost_system -lsqlite3 -llzma
SRC = src/main.cpp
TARGET = integration_demo

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean