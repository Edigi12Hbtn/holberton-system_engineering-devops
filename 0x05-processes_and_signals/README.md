0x05. Processes and signals
===========================
### General

-   What is a PID
-   What is a process
-   How to find a process' PID
-   How to kill a process
-   What is a signal
-   What are the 2 signals that cannot be ignored

#### 0\. What is my PIDmandatory

Write a Bash script that displays its own PID.

```
sylvain@ubuntu$ ./0-what-is-my-pid
4120
sylvain@ubuntu$
```

#### 1\. List your processesmandatory

Write a Bash script that displays a list of currently running processes.

Requirements:

-   Must show all processes, for all users, including those which might not have a TTY
-   Display in a user-oriented format
-   Show process hierarchy

```
sylvain@ubuntu$ ./1-list_your_processes | head -50
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         2  0.0  0.0      0     0 ?        S    Feb13   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [ksoftirqd/0]
root         4  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [kworker/0:0]
root         5  0.0  0.0      0     0 ?        S<   Feb13   0:00  \_ [kworker/0:0H]
root         7  0.0  0.0      0     0 ?        S    Feb13   0:02  \_ [rcu_sched]
root         8  0.0  0.0      0     0 ?        S    Feb13   0:03  \_ [rcuos/0]
root         9  0.0  0.0      0     0 ?        S    Feb13   0:00  \_ [rcu_bh]
```

#### 2\. Show your Bash PIDmandatory

Using your previous exercise command, write a Bash script that displays lines containing the`bash`word, thus allowing you to easily get the PID of your Bash process.

Requirements:

-   You cannot use`pgrep`
-   The third line of your script must be`# shellcheck disable=SC2009`(for more info about ignoring`shellcheck`error[here](https://intranet.hbtn.io/rltoken/BYXAGPH5zbPpsqIR84ndFQ "here"))

```
sylvain@ubuntu$ sylvain@ubuntu$ ./2-show_your_bash_pid
sylvain   4404  0.0  0.7  21432  4000 pts/0    Ss   03:32   0:00          \_ -bash
sylvain   4477  0.0  0.2  11120  1352 pts/0    S+   03:40   0:00              \_ bash ./2-show_your_bash_PID
sylvain   4479  0.0  0.1  10460   912 pts/0    S+   03:40   0:00                  \_ grep bash
sylvain@ubuntu$
```

#### 3\. Show your Bash PID made easymandatory

Write a Bash script that displays the PID, along with the process name, of processes whose name contain the word`bash`.

Requirements:

-   You cannot use`ps`

```
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4555 bash
sylvain@ubuntu$ ./3-show_your_bash_pid_made_easy
4404 bash
4557 bash
sylvain@ubuntu$
```

#### 4\. To infinity and beyondmandatory

Write a Bash script that displays`To infinity and beyond`indefinitely.

Requirements:

-   In between each iteration of the loop, add a`sleep 2`

```
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
^C
sylvain@ubuntu$
```

#### 5\. Kill me nowmandatory

We killed our`4-to_infinity_and_beyond`process using`ctrl+c`in the previous task, there is actually another way to do this.

Write a Bash script that kills`4-to_infinity_and_beyond`process.

Requirements:

-   You must use`kill`

Terminal #0

```
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
sylvain@ubuntu$
```
Terminal #1

```
sylvain@ubuntu$ ./5-kill_me_now
sylvain@ubuntu$
```
#### 6\. Kill me now made easymandatory

Write a Bash script that kills`4-to_infinity_and_beyond`process.

Requirements:

-   You cannot use`kill`or`killall`

Terminal #0

```
sylvain@ubuntu$ ./4-to_infinity_and_beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Terminated
sylvain@ubuntu$

```

Terminal #1

```
sylvain@ubuntu$ ./6-kill_me_now_made_easy
sylvain@ubuntu$
```
#### 7\. Highlandermandatory

Write a Bash script that displays:

-   `To infinity and beyond`indefinitely
-   With a`sleep 2`in between each iteration
-   `I am invincible!!!`when receiving a`SIGTERM`signal

Make a copy of your`6-kill_me_now_made_easy`script, name it`67-kill_me_now_made_easy`, that kills the`7-highlander`process instead of the`4-to_infinity_and_beyond`one.

Terminal #0

```
sylvain@ubuntu$ ./7-highlander
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
I am invincible!!!
To infinity and beyond
To infinity and beyond
To infinity and beyond
I am invincible!!!
To infinity and beyond
^C
sylvain@ubuntu$

```

Terminal #1

```
sylvain@ubuntu$ ./67-kill_me_now_made_easy
sylvain@ubuntu$ ./67-kill_me_now_made_easy
sylvain@ubuntu$ ./67-kill_me_now_made_easy
sylvain@ubuntu$
```
#### 8\. Beheaded processmandatory

Write a Bash script that kills the process`7-highlander`.

Terminal #0

```
sylvain@ubuntu$ ./7-highlander
To infinity and beyond
To infinity and beyond
To infinity and beyond
To infinity and beyond
Killed
sylvain@ubuntu$

```

Terminal #1

```
sylvain@ubuntu$ ./8-beheaded_process
sylvain@ubuntu$
```
