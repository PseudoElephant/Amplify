ID :=$(shell jq < config.json -r '.id')
VERSION :=$(shell jq < config.json -r '.version')
MODS_PATH=/Users/$(USER)/Library/Application\ Support/Balatro/Mods
BALATRO_SOURCE_LOVE=/Users/$(USER)/Library/Application\ Support/Steam/steamapps/common/Balatro/Balatro.app/Contents/Resources/Balatro.love
RUN_SCRIPT=/Users/$(USER)/Library/Application\ Support/Steam/steamapps/common/Balatro/run_lovely_macos.sh

.PHONY: clean build install extract-source run

clean:
	rm -rf build
	rm -rf $(MODS_PATH)/$(ID)

build:
	mkdir -p build/$(ID)/
	cp -r src/* build/$(ID)/
	cp -r config.json build/$(ID)/$(ID).json
	cd build/ && zip -r $(ID)-$(VERSION).zip * && cd ..
	rm -rf build/$(ID)/

install: build
	cp build/$(ID)-$(VERSION).zip $(MODS_PATH)/$(ID)-$(VERSION).zip
	unzip $(MODS_PATH)/$(ID)-$(VERSION).zip -d $(MODS_PATH)/
	rm $(MODS_PATH)/$(ID)-$(VERSION).zip

extract-source:
	cp $(BALATRO_SOURCE_LOVE) SOURCE.zip
	mkdir source
	unzip SOURCE.zip -d source
	rm SOURCE.zip

run: clean install
	ps aux | grep Balatro | grep -v grep | awk '{print $$2}' | xargs kill -9
	sh $(RUN_SCRIPT)
