workflow "New workflow" {
  on = "push"
  resolves = ["Custom action by Ricardo"]
}

action "Custom action by Ricardo" {
  uses = "./action-a"
}
