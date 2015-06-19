.class public Lorg/apache/commons/io/input/ClassLoaderObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ClassLoaderObjectInputStream.java"
.field private classLoader:Ljava/lang/ClassLoader;
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
if-eqz v0, :cond_f
move-object v1, v0
:goto_e
return-object v1
:cond_f
invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
move-result-object v1
goto :goto_e
.end method