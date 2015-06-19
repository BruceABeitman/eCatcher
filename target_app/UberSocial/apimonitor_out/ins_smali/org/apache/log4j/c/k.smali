.class public Lorg/apache/log4j/c/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."
.field static b:Ljava/lang/Class;
.field static c:Ljava/lang/Class;
.field private static d:Z
.field private static e:Z
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
sput-boolean v4, Lorg/apache/log4j/c/k;->d:Z
sput-boolean v3, Lorg/apache/log4j/c/k;->e:Z
const-string v0, "java.version"
invoke-static {v0, v5}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_24
const/16 v1, 0x2e
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_24
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x31
if-eq v0, v1, :cond_24
sput-boolean v3, Lorg/apache/log4j/c/k;->d:Z
:cond_24
const-string v0, "log4j.ignoreTCL"
invoke-static {v0, v5}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {v0, v4}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z
move-result v0
sput-boolean v0, Lorg/apache/log4j/c/k;->e:Z
:cond_32
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/net/URL;
.registers 4
:try_start_0
sget-boolean v0, Lorg/apache/log4j/c/k;->d:Z
if-nez v0, :cond_3b
sget-boolean v0, Lorg/apache/log4j/c/k;->e:Z
if-nez v0, :cond_3b
invoke-static {}, Lorg/apache/log4j/c/k;->b()Ljava/lang/ClassLoader;
move-result-object v0
if-eqz v0, :cond_3b
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Trying to find ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "] using context classloader "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-eqz v0, :cond_3b
:goto_3a
:cond_3a
return-object v0
:cond_3b
sget-object v0, Lorg/apache/log4j/c/k;->b:Ljava/lang/Class;
if-nez v0, :cond_9a
const-string v0, "org.apache.log4j.c.k"
invoke-static {v0}, Lorg/apache/log4j/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/c/k;->b:Ljava/lang/Class;
:goto_47
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
if-eqz v0, :cond_79
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Trying to find ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "] using "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, " class loader."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
:try_end_76
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_76} :catch_9d
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_76} :catch_a4
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_76} :catch_c2
move-result-object v0
if-nez v0, :cond_3a
:cond_79
:goto_79
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Trying to find ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "] using ClassLoader.getSystemResource()."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
goto :goto_3a
:try_start_9a
:cond_9a
sget-object v0, Lorg/apache/log4j/c/k;->b:Ljava/lang/Class;
:try_end_9c
.catch Ljava/lang/IllegalAccessException; {:try_start_9a .. :try_end_9c} :catch_9d
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9a .. :try_end_9c} :catch_a4
.catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9c} :catch_c2
goto :goto_47
:catch_9d
move-exception v0
const-string v1, "Caught Exception while in Loader.getResource. This may be innocuous."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
:catch_a4
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/lang/InterruptedException;
if-nez v1, :cond_b5
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_bc
:cond_b5
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_bc
const-string v1, "Caught Exception while in Loader.getResource. This may be innocuous."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
:catch_c2
move-exception v0
const-string v1, "Caught Exception while in Loader.getResource. This may be innocuous."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/net/URL;
.registers 3
invoke-static {p0}, Lorg/apache/log4j/c/k;->a(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
return-object v0
.end method
.method public static a()Z
.registers 1
sget-boolean v0, Lorg/apache/log4j/c/k;->d:Z
return v0
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
sget-boolean v0, Lorg/apache/log4j/c/k;->d:Z
if-nez v0, :cond_8
sget-boolean v0, Lorg/apache/log4j/c/k;->e:Z
if-eqz v0, :cond_d
:cond_8
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
:goto_c
return-object v0
:try_start_d
:cond_d
invoke-static {}, Lorg/apache/log4j/c/k;->b()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
:try_end_14
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_14} :catch_16
.catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_33
move-result-object v0
goto :goto_c
:catch_16
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/lang/InterruptedException;
if-nez v1, :cond_27
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
instance-of v0, v0, Ljava/io/InterruptedIOException;
if-eqz v0, :cond_2e
:cond_27
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:goto_2e
:cond_2e
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
goto :goto_c
:catch_33
move-exception v0
goto :goto_2e
.end method
.method private static b()Ljava/lang/ClassLoader;
.registers 4
const/4 v0, 0x0
:try_start_1
sget-object v1, Lorg/apache/log4j/c/k;->c:Ljava/lang/Class;
if-nez v1, :cond_1f
const-string v1, "java.lang.Thread"
invoke-static {v1}, Lorg/apache/log4j/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sput-object v1, Lorg/apache/log4j/c/k;->c:Ljava/lang/Class;
:goto_d
const-string v2, "getContextClassLoader"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_13
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_22
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ClassLoader;
:goto_1e
return-object v0
:try_start_1f
:cond_1f
sget-object v1, Lorg/apache/log4j/c/k;->c:Ljava/lang/Class;
:try_end_21
.catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_21} :catch_22
goto :goto_d
:catch_22
move-exception v1
goto :goto_1e
.end method
.method static c(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method