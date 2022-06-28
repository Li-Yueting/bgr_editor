#=========================================================================
# Makefile
#=========================================================================
# Generator : /scratch/users/lyt1314/mflowgen/mflowgen/backends/make_backend.py

SHELL=/usr/bin/env bash -euo pipefail

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir-and-parameterize
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define mkdir-and-symlink
	rm -rf ./$1
	mkdir -p $1
	cd $1 && ln -sf ../$2/* . && cd ..
	rm $1/configure.yml && cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst_dir
# $2 -- $dst
# $3 -- $src
# $4 -- $stamp

define symlink
	mkdir -p $1
	cd $1 && ln -sf $3 $2 && touch $4
endef

# $1 -- $stamp

define stamp
	touch $1
endef

# Default

default: analog-skywater-130nm klayout-drc-gds

# ------------------------------------------------------------------------
# analog-skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-analog-skywater-130nm/.prebuilt)","")
0-analog-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,0-analog-skywater-130nm,../../../../../../home/users/lyt1314/ee372/aloe-sky130/skywater-130nm-analog-adk,0-analog-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-analog-skywater-130nm/.prebuilt)","")

define 0_analog_skywater_130nm_commands_rule
	mkdir -p 0-analog-skywater-130nm/outputs && set -o pipefail && /scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-letters -c -t analog-skywater-130nm && chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-run && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-run 0-analog-skywater-130nm && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-debug && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-debug 0-analog-skywater-130nm; fi && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-check-preconditions.py 0-analog-skywater-130nm; fi && if [[ -e .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/0-analog-skywater-130nm/mflowgen-check-postconditions.py 0-analog-skywater-130nm; fi && cd 0-analog-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-analog-skywater-130nm/outputs/*
endef

0-analog-skywater-130nm/.execstamp: 0-analog-skywater-130nm/.stamp
	$(call 0_analog_skywater_130nm_commands_rule)
	touch $@

0-analog-skywater-130nm/outputs/.execstamp.adk: 0-analog-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

0-analog-skywater-130nm/outputs/.stamp.adk: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,0-analog-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 0_analog_skywater_130nm_post_conditions_commands_rule
	cd 0-analog-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-analog-skywater-130nm/.postconditions.stamp: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk
	$(call 0_analog_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: analog-skywater-130nm

analog-skywater-130nm: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk

.PHONY: 0

0: 0-analog-skywater-130nm/.execstamp 0-analog-skywater-130nm/.postconditions.stamp 0-analog-skywater-130nm/outputs/.execstamp.adk 0-analog-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# klayout-drc-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-klayout-drc-gds/.prebuilt)","")
1-klayout-drc-gds/.stamp:
	$(call cpdir-and-parameterize,1-klayout-drc-gds,../design/klayout-drc-gds,1-klayout-drc-gds/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-klayout-drc-gds/.prebuilt)","")

define 1_klayout_drc_gds_commands_rule
	mkdir -p 1-klayout-drc-gds/outputs && set -o pipefail && /scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-letters -c -t klayout-drc-gds && chmod +x .mflowgen/1-klayout-drc-gds/mflowgen-run && cp -f .mflowgen/1-klayout-drc-gds/mflowgen-run 1-klayout-drc-gds && if [[ -e .mflowgen/1-klayout-drc-gds/mflowgen-debug ]]; then chmod +x .mflowgen/1-klayout-drc-gds/mflowgen-debug && cp -f .mflowgen/1-klayout-drc-gds/mflowgen-debug 1-klayout-drc-gds; fi && if [[ -e .mflowgen/1-klayout-drc-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-klayout-drc-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/1-klayout-drc-gds/mflowgen-check-preconditions.py 1-klayout-drc-gds; fi && if [[ -e .mflowgen/1-klayout-drc-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-klayout-drc-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/1-klayout-drc-gds/mflowgen-check-postconditions.py 1-klayout-drc-gds; fi && cd 1-klayout-drc-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-klayout-drc-gds/outputs/*
endef

1-klayout-drc-gds/.execstamp: 1-klayout-drc-gds/.stamp
	$(call 1_klayout_drc_gds_commands_rule)
	touch $@

1-klayout-drc-gds/outputs/.execstamp.sky130_drc_report.txt: 1-klayout-drc-gds/.execstamp
	touch $@

endif

# collect outputs

1-klayout-drc-gds/outputs/.stamp.sky130_drc_report.txt: 1-klayout-drc-gds/.execstamp 1-klayout-drc-gds/outputs/.execstamp.sky130_drc_report.txt
	$(call stamp,1-klayout-drc-gds/outputs/.stamp.sky130_drc_report.txt)

# post-conditions

define 1_klayout_drc_gds_post_conditions_commands_rule
	cd 1-klayout-drc-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-klayout-drc-gds/.postconditions.stamp: 1-klayout-drc-gds/.execstamp 1-klayout-drc-gds/outputs/.execstamp.sky130_drc_report.txt 1-klayout-drc-gds/outputs/.stamp.sky130_drc_report.txt
	$(call 1_klayout_drc_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: klayout-drc-gds

klayout-drc-gds: 1-klayout-drc-gds/.execstamp 1-klayout-drc-gds/.postconditions.stamp 1-klayout-drc-gds/outputs/.execstamp.sky130_drc_report.txt 1-klayout-drc-gds/outputs/.stamp.sky130_drc_report.txt

.PHONY: 1

1: 1-klayout-drc-gds/.execstamp 1-klayout-drc-gds/.postconditions.stamp 1-klayout-drc-gds/outputs/.execstamp.sky130_drc_report.txt 1-klayout-drc-gds/outputs/.stamp.sky130_drc_report.txt

# debug

define 1_debug_rule
	cd 1-klayout-drc-gds && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-klayout-drc-gds: 
	$(call 1_debug_rule)

.PHONY: debug-1

debug-1: debug-klayout-drc-gds

# ------------------------------------------------------------------------
# Misc
# ------------------------------------------------------------------------

# Clean

.PHONY: clean-all

clean-all:
	@find . -maxdepth 1 ! -name Makefile ! -name .mflowgen\* ! -name \. ! -name \.\. -exec rm -rf {} +

.PHONY: clean-0

clean-0:
	rm -rf ./0-analog-skywater-130nm

.PHONY: clean-analog-skywater-130nm

clean-analog-skywater-130nm: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-klayout-drc-gds

.PHONY: clean-klayout-drc-gds

clean-klayout-drc-gds: clean-1

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../../../../../home/users/lyt1314/ee372/aloe-sky130/skywater-130nm-analog-adk 0-analog-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../../../../../home/users/lyt1314/ee372/aloe-sky130/skywater-130nm-analog-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-analog-skywater-130nm.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/klayout-drc-gds 1-klayout-drc-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/klayout-drc-gds.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-klayout-drc-gds.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-letters -c -t analog-skywater-130nm && /scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-analog-skywater-130nm/configure.yml

.PHONY: info-1

info-1:
	@/scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-letters -c -t klayout-drc-gds && /scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-klayout-drc-gds/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : analog-skywater-130nm" "  1 : klayout-drc-gds" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-1  : debug-klayout-drc-gds" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/scratch/users/lyt1314/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-analog-skywater-130nm,1-klayout-drc-gds

