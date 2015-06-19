.class public Lorg/apache/log4j/e/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:Lorg/apache/log4j/aa;
.field static b:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/e/b;->b:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.e.b"
invoke-static {v0}, Lorg/apache/log4j/e/b;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/b;->b:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/b;->a:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/e/b;->b:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
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
.method private static a(Ljava/lang/Object;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "start"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_13
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_14
.catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_41
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_4c
return-void
:catch_14
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_20
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_20
if-eqz v0, :cond_3b
instance-of v1, v0, Ljava/lang/InterruptedException;
if-nez v1, :cond_2a
instance-of v1, v0, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_31
:cond_2a
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_31
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3b
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V
throw v0
:catch_41
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catch_4c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static b()Ljava/lang/Object;
.registers 2
:try_start_0
const-string v0, "com.sun.jdmk.comm.HtmlAdapterServer"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_9
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b
.catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_16
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_21
move-result-object v0
return-object v0
:catch_b
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catch_16
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catch_21
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public a()V
.registers 6
invoke-static {}, Ljavax/management/MBeanServerFactory;->createMBeanServer()Ljavax/management/MBeanServer;
move-result-object v0
invoke-static {}, Lorg/apache/log4j/e/b;->b()Ljava/lang/Object;
move-result-object v1
:try_start_8
sget-object v2, Lorg/apache/log4j/e/b;->a:Lorg/apache/log4j/aa;
const-string v3, "Registering HtmlAdaptorServer instance."
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v2, Ljavax/management/ObjectName;
const-string v3, "Adaptor:name=html,port=8082"
invoke-direct {v2, v3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
sget-object v2, Lorg/apache/log4j/e/b;->a:Lorg/apache/log4j/aa;
const-string v3, "Registering HierarchyDynamicMBean instance."
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v2, Lorg/apache/log4j/e/d;
invoke-direct {v2}, Lorg/apache/log4j/e/d;-><init>()V
new-instance v3, Ljavax/management/ObjectName;
const-string v4, "log4j:hiearchy=default"
invoke-direct {v3, v4}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v2, v3}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
:try_end_2f
.catch Ljavax/management/JMException; {:try_start_8 .. :try_end_2f} :catch_33
.catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_2f} :catch_3c
invoke-static {v1}, Lorg/apache/log4j/e/b;->a(Ljava/lang/Object;)V
:goto_32
return-void
:catch_33
move-exception v0
sget-object v1, Lorg/apache/log4j/e/b;->a:Lorg/apache/log4j/aa;
const-string v2, "Problem while registering MBeans instances."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_32
:catch_3c
move-exception v0
sget-object v1, Lorg/apache/log4j/e/b;->a:Lorg/apache/log4j/aa;
const-string v2, "Problem while registering MBeans instances."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_32
.end method