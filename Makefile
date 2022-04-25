CC = gcc
CFLAGS = -W -Wall 
TARGET = market
DTARGET = market_debug
OBJECTS = market.o product.o manager.o
all : $(TARGET)
$(TARGET) : $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^
$(DTARGET) : $(OBJECTS)
	$(CC) $(CFLAGS) -DDEBUG -o $@ $^
clean: 
	rm *.o market

