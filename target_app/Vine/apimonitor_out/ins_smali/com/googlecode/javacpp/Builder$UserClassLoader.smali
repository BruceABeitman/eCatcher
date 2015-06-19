.class public Lcom/googlecode/javacpp/Builder$UserClassLoader;
.super Ljava/net/URLClassLoader;
.source "Builder.java"
.field private paths:Ljava/util/LinkedList;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
new-array v0, v0, [Ljava/net/URL;
invoke-direct {p0, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
return-void
.end method
.method public constructor <init>(Ljava/lang/ClassLoader;)V
.registers 3
const/4 v0, 0x0
new-array v0, v0, [Ljava/net/URL;
invoke-direct {p0, v0, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
return-void
.end method
.method public varargs addPaths([Ljava/lang/String;)V
.registers 9
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
move-object v0, p1
array-length v4, v0
const/4 v3, 0x0
:goto_6
if-ge v3, v4, :cond_2
aget-object v5, v0, v3
new-instance v2, Ljava/io/File;
invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v6
if-nez v6, :cond_18
:goto_15
add-int/lit8 v3, v3, 0x1
goto :goto_6
:cond_18
iget-object v6, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:try_start_1d
invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;
move-result-object v6
invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->addURL(Ljava/net/URL;)V
:try_end_28
.catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_28} :catch_29
goto :goto_15
:catch_29
move-exception v1
new-instance v6, Ljava/lang/RuntimeException;
invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v6
.end method
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
.registers 5
iget-object v0, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "user.dir"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->addPaths([Ljava/lang/String;)V
:cond_17
invoke-super {p0, p1}, Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getPaths()[Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "user.dir"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->addPaths([Ljava/lang/String;)V
:cond_17
iget-object v0, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
iget-object v1, p0, Lcom/googlecode/javacpp/Builder$UserClassLoader;->paths:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
return-object v0
.end method