## What is this

It is a spoon for hammerspoon



## Where is from 

Copy and change from [Here](https://github.com/scottcs/dot_hammerspoon/blob/2495d931782fb485459a254bb62557b93329ac14/.hammerspoon/modules/hazel.lua)



## How to use in MacOs  

###### First 

```bash
cd ~
cd .hammerspoon/Spoons
git clone https://github.com/northleafup/Hazel.spoon.git


```

###### Second

Create yourseft config .If there is no directory "~/.hammerspoon/private", please make it 

```bash
cd ~
cd .hammerspoon
mkdir private
```

###### Three

Copy example config, Add yourseff logic. There is one Demo. How to watch directory "~/Downloads"

```bash
cd ~
cp .hammerspoon/Spoons/Hazel.spoon/hazel.lua ~/.hammerspoon/private/hazel.lua
```

###### Four

If you use [my config](https://github.com/northleafup/my-hammerspoon), please refer [this](https://github.com/northleafup/my-hammerspoon#2-load-specify-spoon).

else：

Update init.lua file ,add content as follow

```lua
hs.loadSpoon("Hazel")
```



## Thanks To

[dot_hammerspoon](https://github.com/scottcs/dot_hammerspoon)