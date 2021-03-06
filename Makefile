PROJECT = texas

DEPS = lager pt_helpers doteki bucs texas_adapter
dep_lager = git https://github.com/basho/lager.git master
dep_pt_helpers = git https://github.com/emedia-project/pt_helpers.git master
dep_doteki = git https://github.com/botsunit/doteki.git master
dep_bucs = git https://github.com/botsunit/bucs.git master
dep_texas_adapter = git https://github.com/emedia-project/texas_adapter.git master

DOC_DEPS = edown
dep_edown = git https://github.com/uwiger/edown.git master

include erlang.mk

EDOC_OPTS = {doclet, edown_doclet} \
						, {app_default, "http://www.erlang.org/doc/man"} \
						, {source_path, ["src"]} \
						, {overview, "overview.edoc"} \
						, {stylesheet, ""} \
						, {image, ""} \
						, {top_level_readme, {"./README.md", "https://github.com/emedia-project/${PROJECT}"}}

