DOCKER_IMAGE = docker.pkg.github.com/imos/factorio-configs/pfn202102

.PHONY: run
run:
	docker run --rm -i \
		-v $(CURDIR)/saves:/usr/local/factorio/saves \
		-p 0.0.0.0:34197:34197/udp -p 0.0.0.0:8388:8388/udp \
		--name factorio \
		$(DOCKER_IMAGE) 

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE) .

.PHONY: gost
gost:
	docker build -t docker.pkg.github.com/imos/factorio-configs/gost -f gost.Dockerfile .

.PHONY: run-gost
run-gost:
	docker run --rm -i -p 0.0.0.0:34197:34197/udp --name factorio-gost docker.pkg.github.com/imos/factorio-configs/gost

################################################################################
# Mods
################################################################################
mods: \
	mods/alien-biomes_0.6.8.zip \
	mods/angelspetrochem_0.9.25.zip \
	mods/angelsrefining_0.12.5.zip \
	mods/angelssmelting_0.6.22.zip \
	mods/boblibrary_1.2.0.zip \
	mods/boblogistics_1.2.0.zip \
	mods/Bottleneck_0.11.7.zip \
	mods/chest-auto-sort_1.0.0.zip \
	mods/clock_1.1.0.zip \
	mods/CursorEnhancements_2.1.0.zip \
	mods/flib_0.13.0.zip \
	mods/FNEI_0.4.1.zip \
	mods/helmod_0.12.19.zip \
	mods/nullius-ja_0.4.3.zip \
	mods/nullius_1.8.3.zip \
	mods/RecipeBook_3.5.7.zip \
	mods/Squeak Through_1.8.2.zip \
	mods/TimeTools_2.1.44.zip \
	mods/Todo-List_19.3.0.zip \
	mods/YARM_0.10.14.zip

mods/alien-biomes_0.6.8.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1g6plraywFbY1jlPmBdieTKd3fqf4qEHj \
		"mods/alien-biomes_0.6.8.zip" \
		4f0fbcf5bd3b7c82bcd661fa578c8ed5

mods/angelspetrochem_0.9.25.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1Ztpq7ssSCWRwHTrXoIIjmZPtBHPm5Hcm \
		"mods/angelspetrochem_0.9.25.zip" \
		c3b8a07d16e2913bdd3c2e7d4a7f7b3f

mods/angelsrefining_0.12.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1gG5dt-s9Wm5ZVr9iDXa0V0WMUGuyNUIa \
		"mods/angelsrefining_0.12.5.zip" \
		71b153ed38596504849955b800fac86b

mods/angelssmelting_0.6.22.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1trlZnUaeNa8VACUbCDnc9DnCeq8m6rTq \
		"mods/angelssmelting_0.6.22.zip" \
		2f86f93ed789e81fe4a9a718b40006d4

mods/boblibrary_1.2.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1tgz_L1nznTcPrcJ2uC3gRZxI1HXFwq_B \
		"mods/boblibrary_1.2.0.zip" \
		005df00f144d2e385394c0310a9f485d

mods/boblogistics_1.2.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1qandUeUgrEDNCZIMpg9CNzWAPWh9NUXB \
		"mods/boblogistics_1.2.0.zip" \
		cbf38f8050a97f0d45a2041714f79b7f

mods/Bottleneck_0.11.7.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1JfDCm88hS8xbXEKthIlCA60E-6zqd9hT \
		"mods/Bottleneck_0.11.7.zip" \
		8e13e77777aa6b73be5d13bae0826a1d

mods/chest-auto-sort_1.0.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1LFtmYLRWt15x-7VW8CclHCIE9PsPtpTD \
		"mods/chest-auto-sort_1.0.0.zip" \
		f0f305d50bc103cfcf7d7da68e636090

mods/clock_1.1.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1rDtvs-MqPq_z-4WXGWX9qcAe34MRO1g4 \
		"mods/clock_1.1.0.zip" \
		86e80e999c5ba70e264acdd1162034d5

mods/CursorEnhancements_2.1.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1TZMElGwPPMzYlBkIDajbRgG9WCkt8rQS \
		"mods/CursorEnhancements_2.1.0.zip" \
		e23733acf9643508adb7f16f06c00f0e

mods/flib_0.13.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1QXWMrUE_OXDPgfksvjtn_u47NfFCsQlP \
		"mods/flib_0.13.0.zip" \
		8c3b7f3ab3fbb6886c365dba1862d622

mods/FNEI_0.4.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		12VyJs2vLTpCOVS1RRWl8SdP0qhi9-JZ_ \
		"mods/FNEI_0.4.1.zip" \
		0b9b50faf80ae3d121f839759201f998

mods/helmod_0.12.19.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1vscxt50HZhEbmCjb3XT4A815bD28zX-8 \
		"mods/helmod_0.12.19.zip" \
		b10544e6828efd46fe8d91ed32659973

mods/nullius_1.8.3.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1GxJ0LsnT6GQKt7F8Q76Yp6Jh-q0IXerU \
		"mods/nullius_1.8.3.zip" \
		9c286edea401577ab0f0dab9222a5db0

mods/nullius-ja_0.4.3.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1mWUhfxE0K5c_jV9dmvT_U6ZTeevFgLuq \
		"mods/nullius-ja_0.4.3.zip" \
		2e5e14d342509cb0b65a4bf41d8896f6

mods/RecipeBook_3.5.7.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1ixEDzFCpIvuxyvzNSernooxWyxt4yqNj \
		"mods/RecipeBook_3.5.7.zip" \
		7822fcbd28f2b3a1a72a9fe428252365

mods/Squeak Through_1.8.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1KF4g5o48KV2wk-07cjj4YrNjywVPezRv \
		"mods/Squeak Through_1.8.2.zip" \
		318a592c6cce3512b66f26aae9e898b2

mods/TimeTools_2.1.44.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1uyOv8mtKX2XA1bdxluaD7ZVL0e6RoR23 \
		"mods/TimeTools_2.1.44.zip" \
		85afe3db881e9e89e730918c2e932105

mods/Todo-List_19.3.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1mUqYxPpxStLxZctZ2dCOa6TMWLyKlSUT \
		"mods/Todo-List_19.3.0.zip" \
		cd2b3dbbc034671600a461514d41de86

mods/YARM_0.10.14.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1_YCqwvDocnrOC8PiMzjiXacABxCEiL61 \
		"mods/YARM_0.10.14.zip" \
		9315c58840a5136790d48bdb08754add
