# This class made the operating system detection
class raidtool::detect {
  if ($::operatingsystem == Debian) or ($::operatingsystem == Ubuntu) {
    include raidtool::hardware
  } else {
    notice "Unsupported OS: ${::operatingsystem}"
  }
}
