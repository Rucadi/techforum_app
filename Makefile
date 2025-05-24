CXX ?= g++
CXXFLAGS ?= -std=c++17
LDFLAGS ?= -lboost_system -lsqlite3 -llzma
SRC = src/main.cpp
TARGET = integration_demo
DESTDIR ?= /usr/local/bin

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	install -Dm755 $(TARGET) $(DESTDIR)/$(TARGET)

.PHONY: all clean