0x17. Web stack debugging #3
============================

Tasks
-----

#### 0\. Strace is your friend

Using `strace`, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).

Hint:

-   `strace` can attach to a current running process
-   You can use [tmux](https://intranet.hbtn.io/rltoken/4KkxME6-3aY9fgfok6HNFA "tmux") to run [strace](https://intranet.hbtn.io/rltoken/OUc10nTtuZG65adFVbkYag "strace") in one window and `curl` in another one

Requirements:

-   Your `0-strace_is_your_friend.pp` file must contain Puppet code
-   You can use whatever Puppet resource type you want for you fix
