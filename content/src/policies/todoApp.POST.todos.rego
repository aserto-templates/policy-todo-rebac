package todoApp.POST.todos

# This policy determines whether the user can create todos

import input.user
import future.keywords.in
import data.todoApp.common.is_member_of

default allowed = false

# check if the user is a member of the allowed groups
# (example of group-based RBAC)
allowed {
  allowedGroups := { "editor", "admin" }
  some group in allowedGroups
  is_member_of(user, group)
}
