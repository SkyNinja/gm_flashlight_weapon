GM_BIN = c:/steam/steamapps/common/garrysmod/bin
GMAD = $(GM_BIN)/gmad
GMPUBLISH = $(GM_BIN)/gmpublish

TITLE = customizable_flashlight
ADDON_ID = 244540803

build:
	$(GMAD) create -folder ./gma_src -out $(TITLE).gma
	
publish:
	$(GMPUBLISH) update -id $(ADDON_ID) -addon $(TITLE).gma -icon icon.jpg -changes "$(shell git log -1 --pretty=%B)"
	
clean:
	rm -f $(TITLE).gma