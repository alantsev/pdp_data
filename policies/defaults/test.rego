package pipeline.defaults

concrete_type := "script_test" if {
    input.abstract_type == "test:unit"
}

concrete_type := "coverage_gate" if {
    input.abstract_type == "test:check_unit"
}

params := {"min_coverage": 80} if {
    concrete_type == "coverage_gate"
    is_prod
}

params := {"min_coverage": 60} if {
    concrete_type == "coverage_gate"
    not is_prod
}

