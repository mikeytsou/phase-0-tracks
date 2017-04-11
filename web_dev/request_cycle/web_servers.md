## Release 1: Research Web Servers

* **What are some of the key design philosophies of the Linux operating system?**

Some key design philosophies of Linux:
Do one thing and do it well, expect the output of every program to become the input of another, design and build software, and use tools. The Linux philosophy helps a person choose a set of functions to perform a complex task. Since the functions are quite generic in terms of input/output and focus on performing only one task, the programmer can pipeline them efficiently. The Linux philosophy allows easy debugging, high flexibility and predictable results.

* **In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

VPS is a virtual server that is partitioned so that it has its own operating system, disc space, and bandwidth. A physical dedicated server that resides in a data center is used for VPS hosting and that server is divided into various spaces to create its own virtual server. The owner of that virtual server sees only their virtual environment and can reboot their server or use it as if it was their own dedicated server. VPS is similar to how VMware or Virtual Box works. The advantages of VPS are:

Less expensive than full dedicated physical server and customize your needs so you pay for what you want.

Sense of privacy since you don't share your OS with anyone else, there are no other websites on your server to potentially access your files.

More control and have root access  and ability to use scripts that may not be allowed in shared hosting environments.

* **Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

Root on Linux is equivalent to Administrator on Windows but more dangerous. On Root, you have the freedom to delete everything in the system, you are vulnerable to malicious software because you gave it full permission, and you can be a victim of your own stupidity. Root gives too much power when it isn't necessary most of the time. Using Root bypasses much of the security that Linux provides.