workflow "New workflow" {
  on = "push"
  resolves = [
    "Custom action by Ricardo",
    "./action-cypress-install",
  ]
}

action "Custom action by Ricardo" {
  uses = "./action-a"
}

action "./action-cypress-install" {
  uses = "./action-cypress-install"
}
