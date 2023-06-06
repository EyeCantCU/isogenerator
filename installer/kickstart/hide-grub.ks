%include /tmp/ks-urls.txt

%post --logfile=/root/ks-post.log --erroronfail --nochroot
%ksappend /run/install/repo/kickstart/hide-grub.sh
%end
