# Todo
Soob:
Blogs:
-[] index
-[] show

-[] 
-[] 

Roman: 
Blog:
-[x] create
-[x] edit

Components:
-[] Form for creating/ Editing a Blog
-[] 


# Models
-[] Blog
-[] User
_ validates uniqueness
_ has secure password
-[] Comment

# Serializers

-[] User
*username
*bio
\*image - Blogs
-imgs
-content
-blog's comments

# Controllers

-[] Blogs
resources

-[] Users

-[] sessions controller

-[] Comments
resources: only: [:create, :destroy]

Serializer
-[] Users

# Routes

-[] Blogs full CRUD

    index /blogs 
    show blog/:id

    edit 
    create 

    delete

-[] Users full CRUD
    blogs -serializing the data 

-[] Comments create/destroy 
    edit
    new
    create
    delete

# Schema

-[x] User Table

    username:string
    password_digest:string
    bio:text
    img:string

-[x] Blog Table

    title:string
    content:text
    user:references
    img:string

-[x] Comment Table
content:string
user:references
blog:references
