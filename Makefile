DOCKER_REPOSITORY = asia-northeast1-docker.pkg.dev/factorio-imoz-jp/public
CONFIG_DIR = configs
SYSTEMD_DIR = /etc/systemd/system

.PHONY: run
run:
	docker run --platform linux/amd64 --rm \
		-v $(CURDIR)/saves:/usr/local/factorio/saves \
		-p 0.0.0.0:34197:34197/udp -p 0.0.0.0:8388:8388/udp \
		--name factorio \
		"$(DOCKER_REPOSITORY)/factorio:latest"

.PHONY: run-gost
run-gost:
	docker run --platform linux/amd64 --rm \
		-p 0.0.0.0:34197:34197/udp --name factorio-gost \
		"$(DOCKER_REPOSITORY)/gost"

.PHONY: install
install:
	install -d "$(SYSTEMD_DIR)"
	sed "s|@WORKDIR@|$(CURDIR)|g" "$(CONFIG_DIR)/factorio.service" > "$(SYSTEMD_DIR)/factorio.service"
	chmod 0644 "$(SYSTEMD_DIR)/factorio.service"
	systemctl daemon-reload
	systemctl enable factorio

.PHONY: status
status:
	systemctl status factorio --no-pager

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
	mods/what-is-it-really-used-for_1.7.1.zip \
	mods/aai-containers_0.3.2.zip \
	mods/aai-industry_0.6.14.zip \
	mods/aai-signal-transmission_0.5.3.zip \
	mods/aai-vehicles-ironclad_0.7.5.zip \
	mods/alien-biomes_0.7.4.zip \
	mods/alien-biomes-graphics_0.7.1.zip \
	mods/BottleneckLite_1.3.4.zip \
	mods/bullet-trails_0.7.1.zip \
	mods/chest-auto-sort_1.3.0.zip \
	mods/clock_2.0.1.zip \
	mods/combat-mechanics-overhaul_0.7.2.zip \
	mods/CursorEnhancements_2.2.2.zip \
	mods/equipment-gantry_0.2.4.zip \
	mods/EvenDistributionLite_1.4.5.zip \
	mods/flib_0.16.5.zip \
	mods/FNEI_0.4.6.zip \
	mods/grappling-gun_0.4.1.zip \
	mods/helmod_2.2.8.zip \
	mods/informatron_0.4.0.zip \
	mods/InserterFuelLeech_1.0.2.zip \
	mods/jetpack_0.4.14.zip \
	mods/Milestones_1.4.7.zip \
	mods/ModuleInserterSimplified_2.1.1.zip \
	mods/RateCalculator_3.3.7.zip \
	mods/RecipeBook_4.0.8.zip \
	mods/robot_attrition_0.6.5.zip \
	mods/rocket-log_2.0.3.zip \
	mods/shield-projector_0.2.2.zip \
	mods/solar-calc_0.5.72.zip \
	mods/space-exploration_0.7.39.zip \
	mods/space-exploration-graphics_0.7.5.zip \
	mods/space-exploration-graphics-2_0.7.2.zip \
	mods/space-exploration-graphics-3_0.7.2.zip \
	mods/space-exploration-graphics-4_0.7.2.zip \
	mods/space-exploration-graphics-5_0.7.2.zip \
	mods/space-exploration-menu-simulations_0.7.4.zip \
	mods/space-exploration-postprocess_0.7.4.zip \
	mods/textplates_0.7.2.zip \
	mods/TimeTools_3.0.8.zip \
	mods/Todo-List_19.14.1.zip \
	dlc/elevated-rails_2.0.72.zip \
	dlc/quality_2.0.72.zip \
	dlc/space-age_2.0.72.zip

mods/aai-containers_0.3.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		12gg147KPzx1qU5sogTdeaLB1Dk5h5RGD \
		$@ \
		a379fad6ad2b9eccb22b5a5d3c07fdfd

mods/aai-industry_0.6.14.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1k1SntD-pYV98OnYfDTw6ZBFwpBVlEAup \
		$@ \
		79527205dde951ae3fc8058c64135abd

mods/aai-signal-transmission_0.5.3.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		14Pkg7p2rvsSAkqhZ6SCh51dcZu4TAJd5 \
		$@ \
		deffc435fccfb609d76181fd9f301db6

mods/aai-vehicles-ironclad_0.7.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1v_8F5qvzqdr7kw-8jsW5eVQiqe_gM2yj \
		$@ \
		d64b41fc6f8e3fee860fd6616d128a4a

mods/alien-biomes_0.7.4.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1pI2MM-Yy4Z9kr5fOuJhKr28_4j9sXkTD \
		$@ \
		69b9b531a4fa77eceb213dfb89688145

mods/alien-biomes-graphics_0.7.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1rGPOxyylhHGqJPJiJLhfue4z_i8e25MP \
		$@ \
		bc49233aa6a46bc3d2bcf1470eaf29aa

mods/BottleneckLite_1.3.4.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		19b8ZVsQkL8KynRiOfhooak-ZcssB1EaU \
		$@ \
		72debe36f1f018034c0e3353fb973fd2

mods/bullet-trails_0.7.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1Mm3NClYwOhVpMAFyh8-0VBpCUKWGS8dK \
		$@ \
		8c02135aa3f08303ccbb950dfbfe2b71

mods/chest-auto-sort_1.3.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1wepsWcrjD_vnfJUYB45TNcgZ7safbHtH \
		$@ \
		20e76e0976650e65a6ed775df3188ecc

mods/clock_2.0.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1sCUktO-44swpJitC5Lez_5LeCgC9rs7Z \
		$@ \
		58486a67a03869999f63630a0aac3a66

mods/combat-mechanics-overhaul_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1X3ZvmHi4rl3qQC7TqFZAwj5btzeU0-nc \
		$@ \
		65bd839b7042172710bdf04d7c50431d

mods/CursorEnhancements_2.2.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		12jLv_YfhJbv7XeP3hH-AJmkHBM9UUrV0 \
		$@ \
		9f460524ccb76d479417170e3c206bba

mods/equipment-gantry_0.2.4.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1BWsYjuUZSrTo589YDqkkYXNWjafl68NG \
		$@ \
		7d642997b2a4c9f859b20004abeb718d

mods/EvenDistributionLite_1.4.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1xgvvnRNDPzPexasx9xNv3XuqR9t-7tCb \
		$@ \
		5e4a8d441a5ae990350b6c0c926e8c8e

mods/flib_0.16.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1edBq3cFsNQEpUhFGeUD9Rm0EkTOVgQ8M \
		$@ \
		655f87eb343e790c01f554411e7ceafe

mods/FNEI_0.4.6.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		186D23M20sKF4d2EAqOarBp7TC9M1mSlh \
		$@ \
		3a49f72bfca4f7acdc0815fbb1f01844

mods/grappling-gun_0.4.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1jPOT5llZUT1kyjMuM9REOWyeKLkqlGQM \
		$@ \
		472b8f8fda2ad5e1ead049bc7f69f6b5

mods/helmod_2.2.8.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1VBGt4TMpQ58GkurRUh0xsPjYvn5VsEa5 \
		$@ \
		695d45c0eda89a2f4e83b8ae6df3a72a

mods/informatron_0.4.0.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1Uhmhmxqe8jNN7LnFPi17fs_3o0JzUFB7 \
		$@ \
		7e3448273d7c49dbe7cc0f54e9020d62

mods/InserterFuelLeech_1.0.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1ecJ14Ju1LNSeYLzhQmlDMEYsIeb8dyyg \
		$@ \
		7479597e3faf13dbf1919ee42bf969c2

mods/jetpack_0.4.14.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1TEa45nuprl96vcQeqByYt0J21EP_YxW4 \
		$@ \
		f746208c754d06773116f14281ffd078

mods/Milestones_1.4.7.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1hXr4w2GbTymCDVNgSfBnv4i9aSw_0fEU \
		$@ \
		8757c5a00e9152a78e671dbd1484d79e

mods/ModuleInserterSimplified_2.1.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1XKdD72jVgUHXbo59qGuv66Ixma81wj7F \
		$@ \
		9b5db5e43d64991c6b87970165f0930c

mods/RateCalculator_3.3.7.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		16Rj0ua9Dq3b-qgw1JQUPoYjBkJyTD0lR \
		$@ \
		0f3877c799186dfae6e59390c825326c

mods/RecipeBook_4.0.8.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1KWb-BX1oxBUggJ4wWSJmeXPadDhMX23M \
		$@ \
		c0fe785bcdf461955f2bbd308f027a30

mods/robot_attrition_0.6.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		19gjwW4LLQm1LPOa0bdNH0vRiBntqjIvX \
		$@ \
		9a4f9d6ac4fafa53ffa97eb172d8b688

mods/rocket-log_2.0.3.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		16IdIP5br_7SIu6XrjWEN7sj1fQwHAe35 \
		$@ \
		7f5abb7ca771f87893c36fefb614a065

mods/shield-projector_0.2.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1NmMAK_v78Ta5ewcU4RwUrdIuicGU63_q \
		$@ \
		78f2016fb047ca744eb3ea05fe06ab68

mods/solar-calc_0.5.72.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1rcGDhxUvsueqXsVithlTK_mMzI8_-Gxl \
		$@ \
		56fa8615d957d17bd63c5248a225d674

mods/space-exploration_0.7.39.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1jjUhMpUKqenBnFJf6eQdmf1G1IqU5gY3 \
		$@ \
		acad03ea75ae44b890c7e8ac9750b2fc

mods/space-exploration-graphics_0.7.5.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1g1VfdpADuBxsKqwn6oJJTmhMXvjk-Qa_ \
		$@ \
		d9f3fd16e92cd95ab5bcd47c74272e68

mods/space-exploration-graphics-2_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		19GBGS7-etxiWLhyUq8At_uBCqX-TUU20 \
		$@ \
		b9b6f9183ac3d90d7f18f87ffb7752bf

mods/space-exploration-graphics-3_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1-47ChPmWmCnOq2LxQTFEmkKj5hnPaHBh \
		$@ \
		fa2e9626428de1300f02dfabc71d30f4

mods/space-exploration-graphics-4_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1EZBs-YnuAbFYXahQF2wj9rHZF4Dt4j51 \
		$@ \
		1644486f0dced01a1f9569bb55e221ef

mods/space-exploration-graphics-5_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1k8SVzwPdu05ezG9C5ltJEi5JqQyjIXGo \
		$@ \
		0b8c35752bda0e55df5a66bf113c4461

mods/space-exploration-menu-simulations_0.7.4.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1tIEnp7Cv5U5pgjX_QcsTj4XT4XUiYDna \
		$@ \
		bdfb44a4ae620c21c8cbc2ec54e89932

mods/space-exploration-postprocess_0.7.4.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		10_lf4VkG3AjBwwY_RJzBYwQGYnw2hTyP \
		$@ \
		a63bd24ed876a45c15380dc34f1dbf2a

mods/textplates_0.7.2.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		10s_KcjjG_RkojWU3PMeqEgN7VABv524R \
		$@ \
		3e034621f65d17914fdeab42f73ea9da

mods/TimeTools_3.0.8.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1MUUdFRwQSF-ygveyrFW4ksxMOQSQD_sn \
		$@ \
		3e1f96f062f11a3937b013dc2e03b573

mods/Todo-List_19.14.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1jlmuaX0xEB7wZMlZ-uIYKiUolk_aWTNF \
		$@ \
		bab99b19aa1e8bb5ef6133c6570c54bb

mods/what-is-it-really-used-for_1.7.1.zip:
	mkdir -p mods
	bash scripts/download-from-gdrive.sh \
		1xU73hlwIuyz_cpLkjKE-7i3KzGHQZA3f \
		$@ \
		c0d27a44ab69156a6ce82e9cde056685

dlc/elevated-rails_2.0.72.zip:
	mkdir -p dlc
	bash scripts/download-from-gdrive.sh \
		1_JMCFG9ziAHoIMPmaPfybX5ohgU7SjJ2 \
		$@ \
		fff67aeb6b9f002002310c548f8401e9

dlc/quality_2.0.72.zip:
	mkdir -p dlc
	bash scripts/download-from-gdrive.sh \
		1wg9G4182QaqjWX7bv2rsya30ziSH_BeC \
		$@ \
		4faca09a60f2847d8639a0109f50fcbd

dlc/space-age_2.0.72.zip:
	mkdir -p dlc
	bash scripts/download-from-gdrive.sh \
		1thsOAffQfFCzhIIw-QmHIUUw3hZoVjEp \
		$@ \
		7282eba3f910107116aa7c2573ebbb33
