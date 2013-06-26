class raidtool::detect {
  if ($operatingsystem == Debian) or ($operatingsystem == Ubuntu) {
    include raidtool::hardware
  } else {
    notice "Unsupported OS: $operatingsystem"
  }
}
