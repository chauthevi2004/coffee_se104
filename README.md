# Coffee Shop Web Application - Project SE104

## Table of Contents

- [Introduction](#i-introduction)
- [Technology](#ii-technology)
- [Functions](#iii-functions)
- [Instruction](#iv-instruction)
- [About Us](#v-about-us)
- [Demo](#vi-demo)

## I. Introduction

This is a project focuses on developing a Coffee Shop Web Application

![Imgur](https://i.imgur.com/Ppp7vZi.png)

## II. Technology
The project is made according to a 3-layer model, specifically MVC (Model - View - Controller).

### 2.1 Model: 
Model is the component responsible for processing database operations and sending results to the View. 

### 2.2 View: 
View is the part that displays information on the website.

### 2.3 Controller: 
Controller is the part that directs requests to corresponding tasks.




## III. Functions

### 1. Login
Only for ADMIN and Staff
![Imgur](https://i.imgur.com/2ums1Cb.png)

### 2. For ADMIN 

#### 2.1. Product Management
##### 2.1.1: The list of products
![Imgur](https://i.imgur.com/xiRwK8g.png)
##### 2.1.2: Add product and product information changes
![Imgur](https://i.imgur.com/zeB2R8s.png)
#### 2.2. Emplyee Management
##### 2.2.1: The list of employees
![Imgur](https://i.imgur.com/94vQ3xA.png)
##### 2.2.2: Removing employee
![Imgur](https://i.imgur.com/GXNvngz.png)
#### 2.3:  Revenue Report
![Imgur](https://i.imgur.com/Jc9qn3z.png)
### 3. For Employee

#### 3.1: Bill management.

![Imgur](https://i.imgur.com/EiVwEjf.png)

#### 3.2: Detail bill management.
![Imgur](https://i.imgur.com/9W4MJtW.png)

### 4. For Customers

#### 4.1: Home Screen
![Imgur](https://i.imgur.com/Ppp7vZi.png)
#### 4.2: The best seller products
![Imgur](https://i.imgur.com/mkLSh1j.png)
#### 4.3: Order Product
![Imgur](https://i.imgur.com/X38Oyty.png)
#### 4.4: The Menu
![Imgur](https://i.imgur.com/mSlOJAP.png)
#### 4.5: View details of ordered products
![Imgur](https://i.imgur.com/ekQJElb.png)
#### 4.6: Pay the bill
![Imgur](https://i.imgur.com/fVIH2ke.png)




    
## IV. Instruction
- First, open the "script_and_data.sql" file in Database folder and run it on your Microsoft SQL Server Management Studio
![Imgur](https://i.imgur.com/2U01btb.png)
Remember your Server name. For example: DESKSTOP-ABCXYZ\SQLEXPRESS
Result after execute:
![Imgur](https://i.imgur.com/9talGmq.png)
- Second, Install some requirement libraries and packages such as: **PagedList.**
For example, to get this package you can click: *Project/Manage NuGet Packages*. 
![Imgur](https://i.imgur.com/7lhamZY.png)
Replace this bold text in Web.config to your Server name
- Final, run file **Coffee.sln**
# **Attention:**
These are some ways to fix common errors when working on Visual Studio.
1. If the files are excluded as shown in the image below
![Imgur](https://i.imgur.com/Nz0vL69.png)
Then right-click on those files and select "Include" these items
2. If the website runs with errors related to the "bin" folder, delete the bin. To avoid similar errors, delete the following folders before running:
- bin
- obj
- packages

![Imgur](https://i.imgur.com/hH2Wh8O.png)
### ***One more thing***: 
After every changes in your solution, you should ***Clean*** and ***Rebuild*** solution through command ***Build***.

## V. About us
1. Tran Huu Loc - 22520796
2. Nguyen Tien Huy - 22520567 
3. Phan Nguyen Huu Phong - 22521090
4. Chau The Vi - 22521653
## VI. Demo
We have already deploy this website on this link: http://phong22122004-001-site1.atempurl.com/
