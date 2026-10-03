# My Learning Journey

> **Note:** These are my learning notes from my current phase. I am keeping them as I wrote them so I can look back and see my progress.

## Week 1

watched a 1 hour history of linux, basically where it cme from, how it came by and the early struggles(on 1.5x) lol. 

### Bash scripting and command lines for beginners.

A bash script is a file containing sequence of command executed but bash program line by line. like a file where the command lines are saved so you dont need to retype them everytime. 

downloaded and install linux, and ubuntu and did the installation. used sudo hostnamectl set hostname devbox and then used sudo nano /etc/hosts to edit my terminal name. 

the superuser shell uses # as it anchor while normal user uses $ sign. 

i wrote my first script. to write your script you need the she bang which tell the terminal how to run the script. #!/bin/bash and you follow it with your script. 
echo command litrary echos whatever you write back to you. read pauses the script so you can input and $ holds the value of your variable. to write a date now here is how to write.

```
#!/bin/bash
echo “Today is `date` or $(date)”

echo “where do you want the response to be” 

read “path”

echo “This is all the responses in this path”

ls “$path”
```

Note: $(…..) means run the command inside the bracket. 

“$name means the name is holding a value. 

chmod u+x filename makes the file executable, before that, the file is just text. 

\n is new line

-e make it easy to interpret the \n. without the -e, it will not render in a new line.  it will render literary.

done < .txt. this take input from the text file. Let say the text file name is name.txt.  to take input from it, i will use <name.txt.  

$1 this mean you input data at the execution point. e.g ./name Wale. output would be “My name is wale” 

| COMMAND | WHAT IT DOES |
| --- | --- |
| ls | → list directory |
| ls > output.txt | → list directory → save output to file |
| cat output.txt | → display contents of file |
| ls output.txt | → list the file itself |
| echo macho | → produce "macho" |
| echo macho > file | → produce "macho" → Overite the existiing file |
| done < output.txt | → takes input from the text file |

### while loop. sample 

```
i=1

while [[ $i -le 5 ]](logic, if i is less or equal to 1)

do(action)

echo “$i” (write i)

(( $i += 1) (add 1 everytime till it equals to 5)

done (done)
```

### for loop. sample

```
i=1 (var name)

for i in {1…5} (logic)

do (action.. )

echo “$i”(write)

done(done)
```

### Case Settlements: means bash goes through muultiple case’s you’ve built and return with the most correct and if it cant find the correct, it return with the preset alternative. 

eg. 

```
fruit=”apple”

case fruit $fruit in 

“apple”)

echo “This is a red fruit.”

;;

“orange”)

echo “This is an Orange fruit”

;;

*)

echo “This is not a fruit.”

;;

esac
```

bash will check if there is apple in the script and return what echos the text for apple and if it couldn’t find it. it returns what was set to *). 

### Degugging. 

To debut a script that isnt working, you use set -x at the section where you think the error is or you could just put it after the shebang and it will run through the script and give you the feedback. 

### **. What cron does**

Cron automatically runs commands/scripts at scheduled times.

Think:

> "Run this script for me every day at 2 AM."
> 

#### **2. Know the five fields**

```
* * * * *
│ │ │ │ │
│ │ │ │ └── weekday
│ │ │ └──── month
│ │ └────── day of month
│ └──────── hour
└────────── minute
```

You don't need to memorize every possible combination yet.

#### **3. Know these two commands**

```
crontab -l
```

→ See your scheduled cron jobs.

```
crontab -e
```

→ Edit/add your cron jobs.

#### **4. Understand one simple example**

```
0 0 * * * /path/to/script.sh
```

Means:

> Run `script.sh` at **00:00 (midnight), every day**.
> 

And:

```
*/5 * * * * /path/to/script.sh
```

means:

> Run it **every 5 minutes**.
> 

#### What I'd skip for now

Don't spend time memorizing things like:

```
0 0 1-7 * *
0 6 * * 1-5
*/17 2-4 3-8 ...
```

### **Computer Networking**

LAN → ETHERNET 

MAC(media access control)  address is an identifier for each system. 

CSMA(carrier sense multiple access) → any share transmition that carries date eg cable network or wifi. 

bandwidth is the rate at which a transmiter carries data.  

Exponential Backoff: to fix the network traffic by making one computer wait in a random time (e.g 1.3secs) to transmit data to reduce collusion. 

Collusion domain: this is using a netwrok switch which sit betwen small network ( Read more on this) 

Routine: Allocating a communition line for their exclusive use

Circuit switch: **

message switching: **

Hop count: The number of hops a message tales along a route is called the hop count

Packet: A small pieces of message that contains the destination address on the network so router know where to forward them. 

IP: this is internet protocol. an identifier. 

Congestion control: Load balance

TCP IP: 
internet control message protocol(ICMP)

Border gateway protocol(BGP) 

IoT

ipv4: is a 32bit data that allows for 232 ip addresses or about 4.3billion unique ips(4 digits)

ipv6: a 128bit data that allows for 2128 unique ips. (38 digits)

IP types - Static and dynamic IP
Static: is a permanent IP address whike dynamic is a temporary Ip address

#### DNS(Domain name system): This is internet phonebook where all internet website is saved. it works by translating the website into the Ip address so user can access the website. 

Types:

- **Recursor** → actively goes looking for the answer.
- **Root** → points it toward the correct TLD.
- **TLD** → points it toward the authoritative server for that domain.
- **Authoritative** → has the actual DNS record/answer.
- 

!image.png

DNS caching:  This temporary stores the inital data results which results to faster response to queries. 

### **What is time-to-live (TTL) in networking?**

Time to live (TTL) refers to the amount of time or “hops” that a packet is set to exist inside a network before being discarded by a router. TTL is also used in other contexts including CDN caching and DNS caching.

---

## Week 2 Learning - 28/sep

### Computer Programming

This section talks about computer langauges from Low level languges to high level language, the compiler and interpreted languages. 

### Python

#### Data types; 

Numbers: integers, floating-point numbers, and complex numbers

Strings: Are character sequences.

List are ordered group of elements

tuples are ordered immutable collections of elements.

Dictionaries are collections of key-values pairs that are not ordered. 

Variables: A variable is declared and assigned a value in Python by using the assignment operator. E.g 

```python
a = 7 # 7 is the assigned value of a

b = x + 3 # b is assigned the value of var x + 3

c = b #assigned var c the value of b
```

#### Practiced the parse Json

```python
sample = {

“service”: “journal-api”,

“status”: “healthy”,

“region”: “eastus”,

“requests_last_hour”: 128,

}

for key, value in sample.items():

print(f”{key}: {value}”)
```

### Cloud Computing

explained and i picked aws. created account. 

### Devops

Version control: Git is most purpular version control in the world and it tracks a file history, changes make and when they make them over the course of time. 

#### Git concept;

1. Working directory: Its where your file is saved on your terminal, it’s a workspace where all you make changes to your file. 
2. staging area: also called index is where you prepare changes to your file before committing them, allowing you to review and adjust changes before they become part of projects history. 
3. Local repository: This is your projects history is , the changes and the commit you’ve made is all saved here.
4. remote repository: this is a version of your project hosted onlline or on a network where people can collaborate by pulling and pushing from this shared resource.  
5. Branches: these are parallel version of project where work can be done on diffrent features or fixes independently without affecting the main project untill it is ready to be merged.
6. Pull request: a pull request is away to propose changes from one branch to another. Like a request to review and edit.. as collaborations.
7. Merge: merging is putting/ intergrating changes from one branch into another. like joining the branches where a chnage was made into the main project. 

#### Infrastructure as code

IaC is a way of bulding, changing and managing an infrastructure with a confiq file making it faster and repeatable than clicking through the console or CLI. It allow you to keep a consistent and repeatable result by defining the config file and version it with git to keep it reusable and easy to reshare.

#### CI/CD

This stands for Continues integration and continues Deployment and it is the automatic process for developers that facilitates more frequent merging of code chnages back to a shared branch.
CI this runs the any changes through a number of preset test and if passed, it send to CD which make it ready to go live, it can go live or wait for human approval. basically an automation to catch errors or bugs, if code is good, then CD makes it ready to go live. 

#### Observability

This is how well you can tell whats going on in your system by looking at the output it bring without having to guess. 

##### Pillars of Observability:

1. **Logs** — a running text record of what happened, like "10:32am, user login failed, wrong password." If something breaks, you read the logs to see the trail of what happened right before.
2. **Metrics** — numbers over time, like CPU usage, memory usage, how many requests per second. These help you spot patterns, like "traffic spikes every day at noon" or "memory usage has been climbing all week."
3. **Traces** — following one single request as it travels through multiple parts of a system, so you can see exactly where it slowed down or failed.

##### How it works:

Data collection : continues data collection make observability possible. 

Monitoring: Teams must be able to view app and system data with relative ease. 

analysis … 

#### Containers:

A container is what packages the app plus everyhting it needs to run (library, code, settings) inot one units so it run same way on any system it is launched. 

Kubernetes: is a tools that manages alot of containers for you automatically, starting them, restarting them if they crash and spreading them across maultiple machines.

#### Terraform:

Terraform helps build what you want instead of manually clicking through the console to build.  

##### How it works: 

1. Write: you type out your file, “I want 1 server, this size”. 
2. Plan: you run a command (terrafom plan), and Terraform previews what it’s about to do for confirmation
3. Apply: (terraform apply), and terraform go and builds it on the server(aws)

#### Terraform init command:

This command initializes a working directory containing terraform configuration files. It is the first command to be ran after writing a new terraform configuration or cloning an existing configuration from version control. 

#### Terraform apply:

This excutes command the operation proposed in a terraform plan

hcl

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
  required_version = ">= 1.2"
}
```

- `terraform { }` — **always this exact word.** This is Terraform's reserved keyword for "this block configures Terraform itself." You don't invent this, every project starts with it.
- `required_providers { }` — **always this exact word too**, Terraform's fixed name for "list the providers I need here."
- `aws = { ... }` — **this part you choose.** `aws` is just a label you're picking, it could be named anything, but by convention you name it after the provider. If you were using Azure instead, you'd write `azurerm = { ... }`.
- `source = "hashicorp/aws"` — **this is where your actual question lives.** `hashicorp/aws` means: "go to the Terraform Registry, under the account/namespace `hashicorp`, and get the provider named `aws`." **Will it always say `hashicorp/aws`? Yes, for AWS specifically, forever**, because HashiCorp is the official maintainer of the AWS provider. If you ever used a different cloud, this string changes to match that cloud's official provider, e.g. `hashicorp/google` for GCP, `hashicorp/azurerm` for Azure. So it's not arbitrary, it's literally an address, like a URL, pointing at a specific, named thing in a public registry. You'd look this up on the Terraform Registry website, not memorize or invent it.
- `version = "~> 5.92"` — **you choose this number**, based on what's current when you write the file. You'd typically just check the Terraform Registry page for the AWS provider and copy whatever the latest stable version is.
- `required_version = ">= 1.2"` — **you choose this too**, usually just "whatever Terraform version I actually have installed," checked via `terraform -version`.

1. Type `terraform {` and `required_providers {`, these are fixed syntax, not something you reason out, same as typing `for` in Python, it's the keyword, not a choice.
2. Go to the Terraform Registry website, search "AWS", copy the `source` line it gives you, that's not memorized, it's looked up, every time, by everyone, including experienced engineers.
3. Pick a version number, usually "latest," from that same page.
4. Close the braces.

> I spent alot of time this week troubleshooting and verifying my AWS account, i got suspended for almost 72 hours, i sent mail after mail but yeah it was crazy. I got my account back yesterday OCT 2nd .

#### SSH (SECURE SHELL) :

This a a secure way of sending command on an unsecured network. It uses cryptography to authenticate and encrypt connections between the devices. 

##### Uses: 

1. Remote encrypted connections: SSH allows for an encrypted connection between a user device and a faraway machine, often a server. 
2. It allows for Tunneling: Tunneling is communication channel/ path created to move network and packets from one end points to the other. (a method for moving network or packet through a channel/path where they would not ordinary be able to use).

##### How it works:

SSH runs on top of TCP/IP protocol suite - which much of the internet relies upon.

Public key cryptography - SSH is uses an encryption method to secure the connection called public key.

public key cryptography is a way to encrypt and sigh data with two different keys, a public keys which can be used by the anyone and a private key used by the user(owner).

Authetication: while the public keys cryptography authenticate the connected devies in ssh, a properly secured computer will still ask for authenticaion using the ssh, often through the device password(like my vs code terminal often does).

SSH port forwarding / tunneling: This means sending data packets directed at an Ip address and port on one other machine to an ip address and port on a different machine(simply put: sending a data from one ip to another ip which now forward it to another ip (mostly pre-configured)) 

##### What SSH is used for 

1. remotely managing servers
2. securely transferring file
3. accessing service in the cloud without exposing a local machines ports to the internet
4. connecting remotely to services in a private network
5. bypassing firewall restrictions

SSH port through PORT 22. 

#### CLI BASICS:

ifconfig/ip:  

```
         Linux networking
                │
      ┌─────────┴──────────┐
      │                    │
   ip addr              ip route
      │                    │
 "Who am I?"          "Where do I go?"
      │                    │
  IP address             Gateway
  subnet                 routes
  interface
```

iwconfig: is a Linux utility for inspecting and configuring wireless network interfaces. It can show things like the Wi-Fi network (ESSID), wireless mode, frequency, access point, link rate, signal quality, and signal strength. It's different from `ip` because `ip` handles general network interface/IP/routing information, while `iwconfig` deals with wireless-specific information.

```
         NETWORKING
              │
    ┌─────────┴─────────┐
    │                   │
   IP                  Wi-Fi
    │                   │
   ip               iwconfig
    │                   │
    address        wireless info
    |.                  |
    routes.           signal
    |                   |
    interfaces.      frequency
    | 
    ESSID.
    | 
    access point
```
