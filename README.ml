AugMode - Augment OrgMode with a Wicci
======================================

What Is AugMode
---------------

AugMode is an Augmented Collaborative [OrgMode](http://orgmode.org/) served by a [Wicci System](https://gregdavidson.github.io/wicci-core-S0_lib/) accessible from any Web Server. AugMode is designed to be usable from Mobile Browsers without a physical keyboard.

The Conception of AugMode is brand new. The project to create AugMode is in the [Inception Phase](https://en.wikipedia.org/wiki/Unified_Process#Inception_phase).

Things to Do
------------

-   Flesh out the *Roadmap* and *Implementation Strategies* Sections below
-   Shake down [the Wicci](https://gregdavidson.github.io/wicci-core-S0_lib/) with the latest [PostgreSQL](https://www.postgresql.org/) and [Shim](https://github.com/GregDavidson/wicci-shim-rust)
-   Implement the first version of *The Prototype*

Motivation
----------

We want a life and project information system which is

-   intelligent
-   flexible
-   collaborative
-   secure

### Intelligent

We are inspired by

-   [Douglas Englebart](https://en.wikipedia.org/wiki/Douglas_Engelbart)
-   [Augment, the oN-Line System](https://en.wikipedia.org/wiki/The_Mother_of_All_Demos)
-   [OrgMode](http://orgmode.org/)
-   [The Tiki Wiki](https://tiki.org/tiki-index.ph)
-   [The Wicci System](https://gregdavidson.github.io/wicci-core-S0_lib/)
-   Knowedge Representation Systems

#### Douglas Englebart's Vision and Augment

Douglas Englebart was the first person to envision and build a collaborative information system.

##### Features

-   Collaborative
-   Hierarchical Documents

##### Drawbacks

Very old design and implementation does not take advantage of modern facilities such as the Web and RDBMSs.

#### OrgMode

##### Features

-   Personal
-   Text-Based
-   Well-integrated with EMACS

##### Drawbacks

-   Not well-designed for Collaboration
-   Not well supported outside of EMACS
-   No good Web interface
-   No good Mobile App or Mobile Web interface
-   Text-Based format makes intelligent processing difficult

#### The Tiki Wiki

##### Features

Has allmost all the functionality we want when used from a regular web browser, especially if "NGender Tiki Stewardship" feature is added.

##### Drawbacks

No good mobile interface.

#### The Wicci

##### Features

Great framework for implementing what we want.

-   Built-In super-smart Revision Mangement
-   Tree-based versioning enables forking AND smart semi-automated merging
-   Can support any proper hieararchical markup language

##### Drawbacks

What we want has not yet been implemented with the Wicci.

#### [Knowedge Representation Systems](https://en.wikipedia.org/wiki/Knowledge_representation_and_reasoning), e.g. the [Flora2](http://flora.sourceforge.net/) DOOD

##### Features

Deductive Object Oriented Database. Most intelligent and flexible way to represent information and knowledge. Spectacular framework for representing our information.

##### Drawbacks

DOOD  
Deductive Object Oriented Database

[Flora2](https://en.wikipedia.org/wiki/Flora-2)  
A DOOD implemented in XSB Prolog

We would have to implement what we want including many things which are already part of the Wicci. Representational system is richer than we need at this point. It would be great to revisit using a DOOD like Flora2 at a later time.

Roadmap
-------

The idea is to start with a simple subset of OrgMode which can be accessed from a Web Browser, inlcuding from a small mobile device such as a smartphone, which provides useful functionality not currently available from such an interface.

The implementation sequence could go as follows (a web interface is assumed):

-   Browsing available OrgMode documents
-   Viewing selected OrgMode files with folding
-   Selecting Groups for Sharing
-   Making Blog Posts
-   Adding comments
-   More powerful editing
-   Full editing, event from a Mobile Browser
-   Viewing Calendars
-   All Emacs OrgMode capabilities
-   All Tiki Wiki Features
-   All Wicci Features

Implementation Strategies
-------------------------

### Useful External Tools and Frameworks

-   [Git](https://git-scm.com/)
-   [Pandoc](http://pandoc.org/)
-   [XSLTproc](http://xmlsoft.org/XSLT/xsltproc.html)
-   [PostgreSQL](https://www.postgresql.org/)
-   [The Wicci System](https://gregdavidson.github.io/wicci-core-S0_lib/)

### The Prototype

The prototype would consist of

-   A Git Repository of OrgMode documents
-   A Wicci System with

-- Extra features for storing and manipulating OrgMode Documents

Pandoc  
Able to translate between Org files and an XML-based markup

-   An XSL stylsheet to turn XML-flavored OrgMode back into regular OrgMode.

Possibilities:

-   Having Emacs on a Save of an AugMode file

-- Update Git repository

-   On update of a file in the Git repository

-- Having the Augmode DB automatically updated with the changed file

-   Have any change in a Git-managed OrgMode file cause the file to be reimported to the database.
