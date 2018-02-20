class people::casharma::preferences {

  osx::recovery_message { 'If found, please contact Carthik Sharma - mail@carthik.net - 407 421 3062': }
  include osx::dock::dim_hidden_apps
  #include osx::dock::autohide
  include osx::dock::hot_corners
  include osx::dock::icon_size
  include osx::dock::position
  include osx::global::disable_autocorrect
  include osx::global::natural_mouse_scrolling
  include osx::global::tap_to_click
  include osx::disable_app_quarantine
  include osx::software_update

  # FIXME: the following are done manually for now
  # Use the Dark UI
  # magnification for the dock
  # minimize windows into app icon
  # disable date/time display in menu bar - but after day-o honors dark
  # battery in menu bar - show %
  # always show scrollbar
  # ask to keep changes when quitting an app
  # Prefs -> KB -> Shortcuts -> Services -> New Terminal at Folder.

  
}
