DOCKER_REPOSITORY = asia-northeast1-docker.pkg.dev/factorio-imoz-jp/public

.PHONY: run
run:
	docker run --platform linux/amd64 --rm -i \
		-v $(CURDIR)/saves:/usr/local/factorio/saves \
		-p 0.0.0.0:34197:34197/udp -p 0.0.0.0:8388:8388/udp \
		--name factorio \
		"$(DOCKER_REPOSITORY)/factorio:latest"

.PHONY: run-gost
run-gost:
	docker run --platform linux/amd64 --rm -i \
		-p 0.0.0.0:34197:34197/udp --name factorio-gost \
		"$(DOCKER_REPOSITORY)/gost"

################################################################################
# Build
################################################################################

.PHONY: build
build: factorio gost

.PHONY: factorio
factorio:
	docker build --platform linux/amd64 -t "$(DOCKER_REPOSITORY)/factorio" .

.PHONY: gost
gost:
	docker build --platform linux/amd64 -t "$(DOCKER_REPOSITORY)/gost" -f gost.Dockerfile .

.PHONY: push
push: push-factorio push-gost

push-%:
	docker push "$(DOCKER_REPOSITORY)/$*"

.PHONY: pull
pull: pull-factorio pull-gost

pull-%:
	docker pull "$(DOCKER_REPOSITORY)/$*"

################################################################################
# Mods
################################################################################
mods: \
	mods/Bottleneck_0.12.1.zip \
	mods/chest-auto-sort_1.3.0.zip \
	mods/CursorEnhancements_2.2.2.zip \
	mods/flib_0.16.0.zip \
	mods/FluidMustFlow_1.4.2.zip \
	mods/FNEI_0.4.5.zip \
	mods/helmod_2.0.14.zip \
	mods/maraxsis_1.24.4.zip \
	mods/Mini_Trains_2.0.0.zip \
	mods/RateCalculator_3.3.4.zip \
	mods/robot_attrition_0.6.2.zip \
	mods/SpidertronEnhancements_1.10.7.zip \
	mods/SpidertronPatrols_2.5.8.zip \
	mods/TimeTools_3.0.8.zip \
	mods/visible-planets_1.2.9.zip

mods/Bottleneck_0.12.1.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1zotjRNUUDlH-c8CbmWguQ_bbL5wHeG_- \
		"mods/Bottleneck_0.12.1.zip" \
		17525c62d3cb69b1b1055c1eb0e7cddd

mods/chest-auto-sort_1.3.0.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1sp9R_X6jYwF9NLLrEEgvHC1u3iAiphN0 \
		"mods/chest-auto-sort_1.3.0.zip" \
		20e76e0976650e65a6ed775df3188ecc

mods/CursorEnhancements_2.2.2.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1P6epZR4aSLEYrYIngsAwe6k6PRU9ffo1 \
		"mods/CursorEnhancements_2.2.2.zip" \
		9f460524ccb76d479417170e3c206bba

mods/flib_0.16.0.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		18nY6JAlTZwLTXcmTiPfgVReLmFEacxKu \
		"mods/flib_0.16.0.zip" \
		844134fa0a23e2cead95004dc318f836

mods/FluidMustFlow_1.4.2.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		17DSB4GXt_I3clsEVHPnarN_EoYhUXuJL \
		"mods/FluidMustFlow_1.4.2.zip" \
		a6d0cd901a6189606388b9164cfa07cc

mods/FNEI_0.4.5.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1EC2FNdbbWl9lplxBmUv7qEteGJxQtWQt \
		"mods/FNEI_0.4.5.zip" \
		8183af6b4442f5b6ec886f86d0a66d2d

mods/helmod_2.0.14.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1DaC_gtD5xxK2tBtmmYsWskcfSbkddWmr \
		"mods/helmod_2.0.14.zip" \
		0a37b0a55a90fbabbd12467921a95207

mods/maraxsis_1.24.4.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1OO19b2Kr573pESnKVd-tc88DpxB6K7t_ \
		"mods/maraxsis_1.24.4.zip" \
		4f356f452b61c8952f32e2d4d852b485

mods/Mini_Trains_2.0.0.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1U6acXzm3i9NPfeC93ZXKNvC9JmwODhRR \
		"mods/Mini_Trains_2.0.0.zip" \
		e64894d1848ea3084cabd8307022efa3

mods/RateCalculator_3.3.4.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1XkHEoL6liIrc_iS6MW02TKcY-5l8gqtz \
		"mods/RateCalculator_3.3.4.zip" \
		952dae57e95524eb6ca6bea6a3f5f8af

mods/robot_attrition_0.6.2.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1mD_lbZ-ebu0kP8R8QJQGr0wwvGSDixDX \
		"mods/robot_attrition_0.6.2.zip" \
		1e0237205c9c9fc82a92a847945d8c28

mods/SpidertronEnhancements_1.10.7.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1Fp7AhAFMNzymZOa9opeV1FMluFUV3RoS \
		"mods/SpidertronEnhancements_1.10.7.zip" \
		77390d2611954c895eb1596a773fc887

mods/SpidertronPatrols_2.5.8.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1RttBbNXXvqkC4VhrflWj2QK68VG4Q-PM \
		"mods/SpidertronPatrols_2.5.8.zip" \
		9c5bd32dfa6a602aaf485ba0295cfc17

mods/TimeTools_3.0.8.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		1SajYK1QMj2OTO9AX17QVQKeF91uG58PA \
		"mods/TimeTools_3.0.8.zip" \
		3e1f96f062f11a3937b013dc2e03b573

mods/visible-planets_1.2.9.zip:
	mkdir -p mods
	bash scripts/download-from-gride.sh \
		14BM6uoiNHK006vf1EuIbVb-JtTxx-Ud8 \
		"mods/visible-planets_1.2.9.zip" \
		b0445034caa24afd3167ae7aae2c8b05
