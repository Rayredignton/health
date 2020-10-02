# Hello Markus

An authentication based user system

**Base URL** : https://markus-dev.herokuapp.com/api

# **Endpoints**

### **POST** /auth/workspace (_verify workspace url_)

##### Sample Request

```
{
  "url": "gorals-africa"
}
```

##### Sample Response

```
{
    "data": {
        "hospital": "5f6b49deeda0e2001ec6b7b6"
    },
    "errors": null,
    "message": "workspace validation passed"
}
```

### **POST** /auth/login- log user in

##### Sample Request

```
{
    "email":"emmanuel@dev.com",
    "password": "password",
    "hospital": "5f6b49deeda0e2001ec6b7b6"
}
```

##### Sample Response

```
{
    "data": {
        "firstName": "Emmanuel",
        "lastName": "chukwurah",
        "email": "emmanuel@dev.com",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJob3NwaXRhbCI6IjVmNmI0ZjZlOTA5NmZlMTEyYjk1NGE4OSIsInN0YWZmIjoiNWY2YjRmNmU5MDk2ZmUxMTJiOTU0YThhIiwiaWF0IjoxNjAwODY4NDI2fQ.NWOyynqG2wvCUXFa-ky_6dXwPHCM03JKzekiogOGQN4"
    },
    "errors": null,
    "message": "login successful"
}
```