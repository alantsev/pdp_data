package pipeline.defaults

concrete_type := "script_build" if {
    input.abstract_type == "build:compile"
}

