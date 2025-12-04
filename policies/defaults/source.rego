package pipeline.defaults

concrete_type := "git_clone" if {
    input.abstract_type == "source:get_code"
}

