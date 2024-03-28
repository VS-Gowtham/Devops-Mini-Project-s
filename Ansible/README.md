apt install ansible #Install Ansible on Host server.
Then copy the public key from Host server and paste it inside the authorized_keys in Client server.
Copy the IP of the Client server and past eit inside the inventory in Host.
Then we can use ansible adhoc commands to perform one or two tasks.
For example,
ansible -i inventory all -m "shell" -a "touch ansible_file" #This will creat the ansible_file file in client server.

Inorder to perform a group of tasks ,then we can use ansible playbook.

I have crearted a first_ansible.yml ansible file to install and start Nginx service on the client server.

and can verify it by logging in to the client server.

root@deployapp:~# systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2024-03-28 06:01:06 UTC; 6h ago
       Docs: man:nginx(8)
   Main PID: 28054 (nginx)
      Tasks: 2 (limit: 1121)
     Memory: 4.3M
        CPU: 35ms
     CGroup: /system.slice/nginx.service
             ├─28054 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             └─28055 "nginx: worker process" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "">

Mar 28 06:01:06 deployapp systemd[1]: Starting A high performance web server and a reverse proxy server...
Mar 28 06:01:06 deployapp systemd[1]: Started A high performance web server and a reverse proxy server.
lines 1-14/14

(END)

