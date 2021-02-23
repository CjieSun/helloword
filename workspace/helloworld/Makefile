CC := gcc
LD := gcc
SCRDIR := ./
BUILDDIR := ./
TARGET := helloworld

C_EXT := c
CPP_EXT := cc
C_SOURCES := $(shell find $(SRCDIR) -type f -name *.$(C_EXT))
C_OBJECTS := $(C_SOURCES:.$(C_EXT)=.o)
C_DEPS := $(C_SOURCES:.$(C_EXT)=.d)

CFLAGS :=
CPPFLAGS := -std=c++11
LDFLAGS :=
INC :=

$(TARGET): $(C_OBJECTS)
	mkdir -p $(BUILDDIR)
	$(LD) -o $(TARGET) $^ $(LDFLAGS)

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(C_EXT)
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(BUILDDIR)/%.d: $(SRCDIR)/%.$(C_EXT)
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) $(INC) -MM $<

-include $(C_DEPS)

clean:
	rm -rf $(BUILDDIR)/*.o $(BUILDDIR)/*.d $(TRAGET)

.PHONY: clean


