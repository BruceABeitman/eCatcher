.class public Lorg/apache/log4j/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lorg/apache/log4j/ab; = null
.field static final b:I = 0x7
.field static e:Ljava/lang/Class;
.field  c:Z
.field  d:Ljava/lang/Object;
.field private f:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/log4j/ab;
invoke-direct {v0}, Lorg/apache/log4j/ab;-><init>()V
sput-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
return-void
.end method
.method private constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lorg/apache/log4j/c/k;->a()Z
move-result v0
iput-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_14
new-instance v0, Lorg/apache/log4j/c/ae;
invoke-direct {v0}, Lorg/apache/log4j/c/ae;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
:cond_14
:try_start_14
sget-object v0, Lorg/apache/log4j/ab;->e:Ljava/lang/Class;
if-nez v0, :cond_2a
const-string v0, "java.lang.ThreadLocal"
invoke-static {v0}, Lorg/apache/log4j/ab;->c(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/ab;->e:Ljava/lang/Class;
:goto_20
const-string v1, "remove"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/ab;->f:Ljava/lang/reflect/Method;
:goto_29
return-void
:cond_2a
sget-object v0, Lorg/apache/log4j/ab;->e:Ljava/lang/Class;
:try_end_2c
.catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2c} :catch_2d
goto :goto_20
:catch_2d
move-exception v0
goto :goto_29
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
.registers 2
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
if-eqz v0, :cond_b
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
invoke-direct {v0, p0}, Lorg/apache/log4j/ab;->d(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static a()Ljava/util/Hashtable;
.registers 1
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
if-eqz v0, :cond_b
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
invoke-direct {v0}, Lorg/apache/log4j/ab;->c()Ljava/util/Hashtable;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
if-eqz v0, :cond_9
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
invoke-direct {v0, p0, p1}, Lorg/apache/log4j/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V
:cond_9
return-void
.end method
.method public static b()V
.registers 1
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
if-eqz v0, :cond_9
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
invoke-direct {v0}, Lorg/apache/log4j/ab;->d()V
:cond_9
return-void
.end method
.method public static b(Ljava/lang/String;)V
.registers 2
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
if-eqz v0, :cond_9
sget-object v0, Lorg/apache/log4j/ab;->a:Lorg/apache/log4j/ab;
invoke-direct {v0, p0}, Lorg/apache/log4j/ab;->e(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method private b(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_8
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0}, Lorg/apache/log4j/c/ae;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-nez v0, :cond_23
new-instance v1, Ljava/util/Hashtable;
const/4 v0, 0x7
invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(I)V
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0, v1}, Lorg/apache/log4j/c/ae;->set(Ljava/lang/Object;)V
move-object v0, v1
:cond_23
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
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
.method private c()Ljava/util/Hashtable;
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_8
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0}, Lorg/apache/log4j/c/ae;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
goto :goto_9
.end method
.method private d(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
const/4 v1, 0x0
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_9
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
if-nez v0, :cond_b
:cond_9
move-object v0, v1
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0}, Lorg/apache/log4j/c/ae;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-eqz v0, :cond_1e
if-eqz p1, :cond_1e
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_a
:cond_1e
move-object v0, v1
goto :goto_a
.end method
.method private d()V
.registers 4
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_23
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
if-eqz v0, :cond_23
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0}, Lorg/apache/log4j/c/ae;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-eqz v0, :cond_17
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
:cond_17
iget-object v0, p0, Lorg/apache/log4j/ab;->f:Ljava/lang/reflect/Method;
if-eqz v0, :cond_23
:try_start_1b
iget-object v0, p0, Lorg/apache/log4j/ab;->f:Ljava/lang/reflect/Method;
iget-object v1, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_23
:cond_23
:try_end_23
.catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_26
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
goto :goto_23
:catch_26
move-exception v0
goto :goto_23
.end method
.method private e(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Lorg/apache/log4j/ab;->c:Z
if-nez v0, :cond_20
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
if-eqz v0, :cond_20
iget-object v0, p0, Lorg/apache/log4j/ab;->d:Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/c/ae;
invoke-virtual {v0}, Lorg/apache/log4j/c/ae;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-eqz v0, :cond_20
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z
move-result v0
if-eqz v0, :cond_20
invoke-direct {p0}, Lorg/apache/log4j/ab;->d()V
:cond_20
return-void
.end method