# class raidtool is a non-parameterized puppet class for vendor raid controllers
# and their cli binaries.
class raidtool {
  case $::facterversion {
    /^1\.6\.\d+$/: { include raidtool::detect }
    /^1\.7\.\d+$/: { include raidtool::detect }
    default: { notice "Unsupported facter version ${::facterversion}" }
  }
}
