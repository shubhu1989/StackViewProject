# StackViewProject
* This is a simple project to hide the bottom view on clicking *Edit* button and automatic table height increase using StackView. 

# Two ways to hide the bottom view and increase table height
* Without StackView
  > Make outlet of bottomView as NSLayoutConstraint 
  
  > Set costant equal to 0 and 50 on *Edit* and *Done* action 
  
* With StackView
  > Just simply put tableView and bottomView in StackView
  
  > Set bottomView hidden true and false on *Edit* and *Done* action 

# Preview

<img src="http://hyperlocalnews.s3.amazonaws.com/uploads/202008/1598358399.png">

<img src="http://hyperlocalnews.s3.amazonaws.com/uploads/202008/1598358438.png">

# Requirements
* iOS 13.0+
* Swift 5.0+

