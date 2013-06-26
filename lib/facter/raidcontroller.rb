# Need facter version 1.6 and higher
#
if Facter.value(:kernel) == "Linux"
  raidcontroller_list = []
  Facter::Util::Resolution.exec('lspci').each_line do |l|
    if l =~ /^\d{2}:\d{2}.\d{1} RAID bus controller: (.*)$/
      raidcontroller_list = $1
    end
  end
  raidcontroller_list.each_line do |desc, i|
    Facter.add("raidcontroller") do
      confine :kernel => :linux
      setcode do
        desc
      end
    end
  end
end


