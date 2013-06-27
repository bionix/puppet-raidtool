class raidtool::hardware {
  case $raidcontroller {
    /Adaptec AAC-RAID/: { include raidtool::hardware::aac }
    /Adaptec Device/:   { include raidtool::hardware::aac }
    /Adaptec Series/:   { include raidtool::hardware::aac }
    /3ware/:            { include raidtool::hardware::threeware }
    /LSI/:              { include raidtool::hardware::lsi }
    /Hewlett/:          { include raidtool::hardware::hp }
    /Compaq/:           { include raidtool::hardware::hp }
    default:            { notice "Unsupported raid controller: $::raidcontroller" }
  }
}