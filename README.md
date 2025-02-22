```
  ___          _                                                   
 |   \ ___  __| |_____ _ _                                         
 | |) / _ \/ _| / / -_) '_|                                        
 |___/\___/\__|_\_\___|_|          _____     _ _             _     
 |  \/  |__|_   _|  _| |__  ___ __|_   _|_ _(_) |___ __ __ _| |___ 
 | |\/| / -_)| || || | '_ \/ -_)___|| |/ _` | | (_-</ _/ _` | / -_)
 |_|_ |_\___||_| \_,_|_.__/\___|    |_|\__,_|_|_/__/\__\__,_|_\___|
 / __| __ _ _  _(_)__| |__|_   _|_ _(_) |___ __ __ _| |___         
 \__ \/ _` | || | / _` |___|| |/ _` | | (_-</ _/ _` | / -_)        
 |___/\__, |\_,_|_\__,_|    |_|\__,_|_|_/__/\__\__,_|_\___|        
         |_|                                                       

```

docker-compose ready MeTube via Squid Proxy secured using Tailscale

## Before you start

You will need 2 API keys for your Tailscale Clients - You can generate them via the 
[Tailscale Control Panel](https://login.tailscale.com/admin/settings/keys)

- [ ] be sure to set tags for your clients and make sure they have appropriate [ACLs](https://login.tailscale.com/admin/acls/file)
- [ ] you can use the same key by setting the 'reusable' option 
- [ ] be sure to select ephemeral so that instances are removed when down
- [ ] modify the .env.example with your key and rename to .env

