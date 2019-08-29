workflow "New workflow" {
  on = "push"
}
action "action a" {
  uses = "./action-a/"
}
