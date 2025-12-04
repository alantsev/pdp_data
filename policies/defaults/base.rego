package pipeline.defaults

decision := {
    "concrete_type": concrete_type,
    "blocking": blocking,
    "params": params
}

is_prod := input.environment == "prod"
blocking := is_prod
default params = {}

