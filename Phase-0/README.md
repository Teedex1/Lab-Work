## watched a 1 hour history of linux, basically where it cme from, how it came by and the early struggles. 

## Next: bash scripting and command lines for beginners.

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

## while loop. sample 

```
i=1

while [[ $i -le 5 ]](logic, if i is less or equal to 1)

do(action)

echo “$i” (write i)

(( $i += 1) (add 1 everytime till it equals to 5)

done (done)
```

## for loop. sample

```
i=1 (var name)

for i in {1…5} (logic)

do (action.. )

echo “$i”(write)

done(done)
```

## Case Settlements: means bash goes through muultiple case’s you’ve built and return with the most correct and if it cant find the correct, it return with the preset alternative. 

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

## Degugging. 
To debut a script that isnt working, you use set -x at the section where you think the error is or you could just put it after the shebang and it will run through the script and give you the feedback. 

## **. What cron does**

Cron automatically runs commands/scripts at scheduled times.

Think:

> "Run this script for me every day at 2 AM."
> 

### **2. Know the five fields**

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

### **3. Know these two commands**

```
crontab -l
```

→ See your scheduled cron jobs.

```
crontab -e
```

→ Edit/add your cron jobs.

### **4. Understand one simple example**

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

### What I'd skip for now

Don't spend time memorizing things like:

```
0 0 1-7 * *
0 6 * * 1-5
*/17 2-4 3-8 ...
```

## **Computer Networking**

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

### DNS(Domain name system): This is internet phonebook where all internet website is saved. it works by translating the website into the Ip address so user can access the website. 
 Types:

- **Recursor** → actively goes looking for the answer.
- **Root** → points it toward the correct TLD.
- **TLD** → points it toward the authoritative server for that domain.
- **Authoritative** → has the actual DNS record/answer.
- 

!image.png

DNS caching:  This temporary stores the inital data results which results to faster response to queries. 

## **What is time-to-live (TTL) in networking?**

Time to live (TTL) refers to the amount of time or “hops” that a packet is set to exist inside a network before being discarded by a router. TTL is also used in other contexts including CDN caching and DNS caching.

