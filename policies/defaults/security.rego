package pipeline.defaults

has_no_sast if {
    input.tags[_] == "no_sast"
}

concrete_type := "common:noop" if {
    input.abstract_type == "security:sast"
    has_no_sast
}

concrete_type := "common:noop" if {
    input.abstract_type == "security:check_sast"
    has_no_sast
}

concrete_type := "script_sast" if {
    input.abstract_type == "security:sast"
    not has_no_sast
}

concrete_type := "sast_gate" if {
    input.abstract_type == "security:check_sast"
    not has_no_sast
}

params := {"threshold": "A"} if {
    concrete_type == "sast_gate"
}

