# CakePHP

[![Latest Stable Version](https://poser.pugx.org/cakephp/cakephp/v/stable.svg)](https://packagist.org/packages/cakephp/cakephp)
[![License](https://poser.pugx.org/cakephp/cakephp/license.svg)](https://packagist.org/packages/cakephp/cakephp)
[![Bake Status](https://secure.travis-ci.org/cakephp/cakephp.png?branch=master)](https://travis-ci.org/cakephp/cakephp)
[![Code consistency](https://squizlabs.github.io/PHP_CodeSniffer/analysis/cakephp/cakephp/grade.svg)](https://squizlabs.github.io/PHP_CodeSniffer/analysis/cakephp/cakephp/)

CakePHP is a rapid development framework for PHP which uses commonly known design patterns like Active Record, Association Data Mapping, Front Controller and MVC.
Our primary goal is to provide a structured framework that enables PHP users at all levels to rapidly develop robust web applications, without any loss to flexibility.


## Some Handy Links

[CakePHP](https://cakephp.org) - The rapid development PHP framework

[CookBook](https://book.cakephp.org) - THE CakePHP user documentation; start learning here!

[API](https://api.cakephp.org) - A reference to CakePHP's classes

[Plugins](https://plugins.cakephp.org) - A repository of extensions to the framework

[The Bakery](https://bakery.cakephp.org) - Tips, tutorials and articles

[Community Center](https://community.cakephp.org) - A source for everything community related

[Training](https://training.cakephp.org) - Join a live session and get skilled with the framework

[CakeFest](https://cakefest.org) - Don't miss our annual CakePHP conference

[Cake Software Foundation](https://cakefoundation.org) - Promoting development related to CakePHP


## Get Support!

[#cakephp](https://webchat.freenode.net/?channels=#cakephp) on irc.freenode.net - Come chat with us, we have cake

[Google Group](https://groups.google.com/group/cake-php) - Community mailing list and forum

[GitHub Issues](https://github.com/cakephp/cakephp/issues) - Got issues? Please tell us!

[Roadmaps](https://github.com/cakephp/cakephp/wiki#roadmaps) - Want to contribute? Get involved!


## Contributing

[CONTRIBUTING.md](CONTRIBUTING.md) - Quick pointers for contributing to the CakePHP project

[CookBook "Contributing" Section (2.x)](https://book.cakephp.org/2.0/en/contributing.html) [(3.x)](https://book.cakephp.org/3.0/en/contributing.html) - Version-specific details about contributing to the project


--------------------------------------------------------------------------------------------------------------------

## NOTES UPDATE
- Modify User model

LOGIN AGE: 
controller
- login - modify code

-------------------------------------------------------
THANK YOU PAGE:
view 
- edit on button

controller
- add thankyou function/action for viewing on last 

-------------------------------------------------------
REGISTER PAGE:
view 
- flash alert - need go relocate into col-5

controller
- create - modify code

-------------------------------------------------------
PROFILE PAGE:
view 
- Modal (Change pass & email) - change redirect when sucess to $().modal('hide);
- edit profiel - need to fixed image null & datepicker

controller
- editProfile - modify code

model



## AJAX Multi data form
$('#profileUpdateForm').on('submit', function(e) {
    e.preventDefault(0);

    $.ajax({
        url:'<?php echo $this->Html->url(array('controller' => 'users', 'action' => 'editProfile')); ?>',
        type:'POST',
        dataType: 'json',
        data: new FormData(this),
        contentType:false,
        cache:false,
        processData:false,
        success:function(response) {
            console.log(response);
        },
        error:function(error) {
            console.log(error);
        }
    });
});


## BOOTSTRAP TOASTR
https://cdnjs.com/libraries/bootstrap-toaster/4.0.0


## QUERY
SELECT * FROM conversations WHERE sender_id = 2 OR recipient_id = 2;

SELECT a.name, b.* FROM users a JOIN messages b ON a.id = b.sender_id  WHERE inbox_hash = 840334302023;
