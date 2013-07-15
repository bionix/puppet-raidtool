# This class read out the facter value and points to the right vendor depending
# module part.
class raidtool::hardware {
  case $::raidcontroller {
    /Adaptec AAC-RAID/: { include raidtool::aac }
    /Adaptec Device/:   { include raidtool::aac }
    /Adaptec Series/:   { include raidtool::aac }
    /3ware/:            { include raidtool::threeware }
    /LSI/:              { include raidtool::lsi }
    /Hewlett/:          { include raidtool::hp }
    /Compaq/:           { include raidtool::hp }
    default:            {
      notice "Unsupported raid controller: ${::raidcontroller}"
    }
  }
}