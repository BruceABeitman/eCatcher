.class public Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ClassLoaderObjectInputStream.java"
.field private final classLoader:Ljava/lang/ClassLoader;
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
iput-object p1, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;
return-void
.end method
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
.registers 6
invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
iget-object v3, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;
invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_e
:goto_d
return-object v0
:cond_e
invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
move-result-object v0
goto :goto_d
.end method
.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
.registers 8
array-length v3, p1
new-array v2, v3, [Ljava/lang/Class;
const/4 v1, 0x0
:goto_4
array-length v3, p1
if-ge v1, v3, :cond_15
aget-object v3, p1, v1
const/4 v4, 0x0
iget-object v5, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;
invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
move-result-object v3
aput-object v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_15
:try_start_15
iget-object v3, p0, Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;->classLoader:Ljava/lang/ClassLoader;
invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
:try_end_1a
.catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1a} :catch_1c
move-result-object v3
:goto_1b
return-object v3
:catch_1c
move-exception v0
invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
goto :goto_1b
.end method