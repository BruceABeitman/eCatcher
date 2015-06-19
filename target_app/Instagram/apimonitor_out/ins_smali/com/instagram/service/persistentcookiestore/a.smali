.class final Lcom/instagram/service/persistentcookiestore/a;
.super Ljava/io/ObjectInputStream;
.source "PersistentCookieStore.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method protected final readClassDescriptor()Ljava/io/ObjectStreamClass;
.registers 4
invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;
move-result-object v0
invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;
move-result-object v1
const-string v2, "com.instagram.api.SerializableCookie"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1c
invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;
move-result-object v1
const-string v2, "com.instagram.service.PersistentCookieStore$SerializableCookie"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
:cond_1c
const-class v0, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore$SerializableCookie;
invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
move-result-object v0
:cond_22
return-object v0
.end method