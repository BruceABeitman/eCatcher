.class  Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL
.field private transient clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
.field private final transient cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
.method public constructor <init>(Lch/boye/httpclientandroidlib/cookie/Cookie;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
return-void
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 5
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-direct {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v2, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I
move-result v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setVersion(I)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z
move-result v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->setSecure(Z)V
return-void
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 3
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getComment()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getExpiryDate()Ljava/util/Date;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I
move-result v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isSecure()Z
move-result v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
return-void
.end method
.method public getCookie()Lch/boye/httpclientandroidlib/cookie/Cookie;
.registers 3
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->cookie:Lch/boye/httpclientandroidlib/cookie/Cookie;
iget-object v1, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
if-eqz v1, :cond_8
iget-object v0, p0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;->clientCookie:Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
:cond_8
return-object v0
.end method