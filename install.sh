yum update

yum install -y readline-devel openssl perl-ExtUtils-MakeMaker pam-devel mysql-devel \
rpmdevtools yum-utils bzip2-devel openssl-devel zlib-devel gcc make \
perl perl-Switch wget

wget https://github.com/dun/munge/releases/download/munge-0.5.13/munge-0.5.13.tar.xz
wget https://download.schedmd.com/slurm/slurm-18.08.7.tar.bz2
wget https://rpmfind.net/linux/remi/enterprise/6/test/x86_64/compat-mysql55-5.5.55-1.el6.remi.x86_64.rpm


rpmbuild -tb --clean munge-0.5.13.tar.xz
rpm -ihv /root/rpmbuild/RPMS/x86_64/munge-*

rpmbuild -ta --clean slurm-18.08.7.tar.bz2
rpm -ihv /root/rpmbuild/RPMS/x86_64/slurm-*
