.class public Lorg/apache/log4j/e/d;
.super Lorg/apache/log4j/e/a;
.source "SourceFile"
.implements Ljavax/management/NotificationBroadcaster;
.implements Lorg/apache/log4j/k/g;
.field static final c:Ljava/lang/String; = "addAppender."
.field static final d:Ljava/lang/String; = "threshold"
.field static e:Ljava/lang/Class;
.field private static m:Lorg/apache/log4j/aa;
.field private f:[Ljavax/management/MBeanConstructorInfo;
.field private g:[Ljavax/management/MBeanOperationInfo;
.field private h:Ljava/util/Vector;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljavax/management/NotificationBroadcasterSupport;
.field private l:Lorg/apache/log4j/k/j;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/e/d;->e:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.e.d"
invoke-static {v0}, Lorg/apache/log4j/e/d;->c(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/d;->e:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/e/d;->e:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Lorg/apache/log4j/e/a;-><init>()V
new-array v0, v1, [Ljavax/management/MBeanConstructorInfo;
iput-object v0, p0, Lorg/apache/log4j/e/d;->f:[Ljavax/management/MBeanConstructorInfo;
new-array v0, v1, [Ljavax/management/MBeanOperationInfo;
iput-object v0, p0, Lorg/apache/log4j/e/d;->g:[Ljavax/management/MBeanOperationInfo;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/e/d;->h:Ljava/util/Vector;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
const-string v0, "This MBean acts as a management facade for org.apache.log4j.Hierarchy."
iput-object v0, p0, Lorg/apache/log4j/e/d;->j:Ljava/lang/String;
new-instance v0, Ljavax/management/NotificationBroadcasterSupport;
invoke-direct {v0}, Ljavax/management/NotificationBroadcasterSupport;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-direct {p0}, Lorg/apache/log4j/e/d;->f()V
return-void
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
.method private f()V
.registers 14
const/4 v4, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/e/d;->f:[Ljavax/management/MBeanConstructorInfo;
new-instance v2, Ljavax/management/MBeanConstructorInfo;
const-string v3, "HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance"
aget-object v0, v0, v6
invoke-direct {v2, v3, v0}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
aput-object v2, v1, v6
iget-object v7, p0, Lorg/apache/log4j/e/d;->h:Ljava/util/Vector;
new-instance v0, Ljavax/management/MBeanAttributeInfo;
const-string v1, "threshold"
const-string v2, "java.lang.String"
const-string v3, "The \"threshold\" state of the hiearchy."
move v5, v4
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
new-array v10, v4, [Ljavax/management/MBeanParameterInfo;
new-instance v0, Ljavax/management/MBeanParameterInfo;
const-string v1, "name"
const-string v2, "java.lang.String"
const-string v3, "Create a logger MBean"
invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aput-object v0, v10, v6
iget-object v0, p0, Lorg/apache/log4j/e/d;->g:[Ljavax/management/MBeanOperationInfo;
new-instance v7, Ljavax/management/MBeanOperationInfo;
const-string v8, "addLoggerMBean"
const-string v9, "addLoggerMBean(): add a loggerMBean"
const-string v11, "javax.management.ObjectName"
move v12, v4
invoke-direct/range {v7 .. v12}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V
aput-object v7, v0, v6
return-void
.end method
.method public a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
.registers 8
if-nez p1, :cond_24
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Operation name cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke a null operation in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_24
const-string v0, "addLoggerMBean"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
const/4 v0, 0x0
aget-object v0, p2, v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/apache/log4j/e/d;->a(Ljava/lang/String;)Ljavax/management/ObjectName;
move-result-object v0
return-object v0
:cond_36
new-instance v0, Ljavax/management/ReflectionException;
new-instance v1, Ljava/lang/NoSuchMethodException;
invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot find the operation "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/ReflectionException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V
throw v0
.end method
.method public a(Ljava/lang/String;)Ljavax/management/ObjectName;
.registers 3
invoke-static {p1}, Lorg/apache/log4j/x;->b(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0, v0}, Lorg/apache/log4j/e/d;->a(Lorg/apache/log4j/aa;)Ljavax/management/ObjectName;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method  a(Lorg/apache/log4j/aa;)Ljavax/management/ObjectName;
.registers 13
const/4 v1, 0x0
invoke-virtual {p1}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v8
:try_start_5
new-instance v0, Lorg/apache/log4j/e/f;
invoke-direct {v0, p1}, Lorg/apache/log4j/e/f;-><init>(Lorg/apache/log4j/aa;)V
new-instance v7, Ljavax/management/ObjectName;
const-string v2, "log4j"
const-string v3, "logger"
invoke-direct {v7, v2, v3, v8}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_start_13
:try_end_13
.catch Ljavax/management/JMException; {:try_start_5 .. :try_end_13} :catch_9e
.catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_13} :catch_c1
iget-object v1, p0, Lorg/apache/log4j/e/d;->b:Ljavax/management/MBeanServer;
invoke-interface {v1, v7}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z
move-result v1
if-nez v1, :cond_9c
invoke-virtual {p0, v0, v7}, Lorg/apache/log4j/e/d;->a(Ljava/lang/Object;Ljavax/management/ObjectName;)V
new-instance v1, Ljavax/management/NotificationFilterSupport;
invoke-direct {v1}, Ljavax/management/NotificationFilterSupport;-><init>()V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "addAppender."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {p1}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljavax/management/NotificationFilterSupport;->enableType(Ljava/lang/String;)V
sget-object v2, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "---Adding logger ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, "] as listener."
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
iget-object v2, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
const/4 v3, 0x0
invoke-virtual {v2, v0, v1, v3}, Ljavax/management/NotificationBroadcasterSupport;->addNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
iget-object v9, p0, Lorg/apache/log4j/e/d;->h:Ljava/util/Vector;
new-instance v0, Ljavax/management/MBeanAttributeInfo;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "logger="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "javax.management.ObjectName"
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "The "
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, " logger."
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
const/4 v5, 0x1
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
:try_end_9c
.catch Ljavax/management/JMException; {:try_start_13 .. :try_end_9c} :catch_e8
.catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_9c} :catch_e4
:cond_9c
move-object v0, v7
:goto_9d
return-object v0
:catch_9e
move-exception v0
move-object v10, v0
move-object v0, v1
move-object v1, v10
:goto_a2
sget-object v2, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "Could not add loggerMBean for ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, "]."
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_9d
:catch_c1
move-exception v0
move-object v10, v0
move-object v0, v1
move-object v1, v10
:goto_c5
sget-object v2, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "Could not add loggerMBean for ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, "]."
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_9d
:catch_e4
move-exception v0
move-object v1, v0
move-object v0, v7
goto :goto_c5
:catch_e8
move-exception v0
move-object v1, v0
move-object v0, v7
goto :goto_a2
.end method
.method protected a()Lorg/apache/log4j/aa;
.registers 2
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
return-object v0
.end method
.method public a(Ljava/lang/Boolean;)V
.registers 4
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
const-string v1, "postRegister is called."
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-interface {v0, p0}, Lorg/apache/log4j/k/j;->a(Lorg/apache/log4j/k/g;)V
iget-object v0, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-interface {v0}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/apache/log4j/e/d;->a(Lorg/apache/log4j/aa;)Ljavax/management/ObjectName;
return-void
.end method
.method public a(Ljavax/management/Attribute;)V
.registers 6
if-nez p1, :cond_2a
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke a setter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_2a
invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;
move-result-object v0
if-nez v1, :cond_5c
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute name cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke the setter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute name"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_5c
const-string v2, "threshold"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-interface {v1}, Lorg/apache/log4j/k/j;->b()Lorg/apache/log4j/v;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-interface {v1, v0}, Lorg/apache/log4j/k/j;->a(Lorg/apache/log4j/v;)V
:cond_75
return-void
.end method
.method public a(Ljavax/management/NotificationListener;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
invoke-virtual {v0, p1}, Ljavax/management/NotificationBroadcasterSupport;->removeNotificationListener(Ljavax/management/NotificationListener;)V
return-void
.end method
.method public a(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
invoke-virtual {v0, p1, p2, p3}, Ljavax/management/NotificationBroadcasterSupport;->addNotificationListener(Ljavax/management/NotificationListener;Ljavax/management/NotificationFilter;Ljava/lang/Object;)V
return-void
.end method
.method public a(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
.registers 7
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "addAppenderEvent called: logger="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ", appender="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-interface {p2}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
new-instance v0, Ljavax/management/Notification;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "addAppender."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, 0x0
invoke-direct {v0, v1, p0, v2, v3}, Ljavax/management/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V
invoke-virtual {v0, p2}, Ljavax/management/Notification;->setUserData(Ljava/lang/Object;)V
sget-object v1, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
const-string v2, "sending notification."
invoke-virtual {v1, v2}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
iget-object v1, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
invoke-virtual {v1, v0}, Ljavax/management/NotificationBroadcasterSupport;->sendNotification(Ljavax/management/Notification;)V
return-void
.end method
.method public b(Ljava/lang/String;)Ljava/lang/Object;
.registers 6
if-nez p1, :cond_2a
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute name cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke a getter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute name"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_2a
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Called getAttribute with ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "]."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
const-string v0, "threshold"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lorg/apache/log4j/e/d;->l:Lorg/apache/log4j/k/j;
invoke-interface {v0}, Lorg/apache/log4j/k/j;->b()Lorg/apache/log4j/v;
move-result-object v0
:goto_56
return-object v0
:cond_57
const-string v0, "logger"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_bc
const-string v0, "%3D"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_fb
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const/16 v2, 0x3d
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
add-int/lit8 v0, v0, 0x3
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_8a
:try_start_8a
new-instance v0, Ljavax/management/ObjectName;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "log4j:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
:try_end_a2
.catch Ljavax/management/JMException; {:try_start_8a .. :try_end_a2} :catch_a3
.catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_a2} :catch_e1
goto :goto_56
:catch_a3
move-exception v0
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not create ObjectName"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
:goto_bc
:cond_bc
new-instance v0, Ljavax/management/AttributeNotFoundException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Cannot find "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, " attribute in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:catch_e1
move-exception v0
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not create ObjectName"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
goto :goto_bc
:cond_fb
move-object v1, p1
goto :goto_8a
.end method
.method public b(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
.registers 6
sget-object v0, Lorg/apache/log4j/e/d;->m:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "removeAppenderCalled: logger="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ", appender="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-interface {p2}, Lorg/apache/log4j/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
return-void
.end method
.method public d()Ljavax/management/MBeanInfo;
.registers 8
iget-object v0, p0, Lorg/apache/log4j/e/d;->h:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
new-array v3, v0, [Ljavax/management/MBeanAttributeInfo;
iget-object v0, p0, Lorg/apache/log4j/e/d;->h:Ljava/util/Vector;
invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
new-instance v0, Ljavax/management/MBeanInfo;
iget-object v1, p0, Lorg/apache/log4j/e/d;->i:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/log4j/e/d;->j:Ljava/lang/String;
iget-object v4, p0, Lorg/apache/log4j/e/d;->f:[Ljavax/management/MBeanConstructorInfo;
iget-object v5, p0, Lorg/apache/log4j/e/d;->g:[Ljavax/management/MBeanOperationInfo;
const/4 v6, 0x0
new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V
return-object v0
.end method
.method public e()[Ljavax/management/MBeanNotificationInfo;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/e/d;->k:Ljavax/management/NotificationBroadcasterSupport;
invoke-virtual {v0}, Ljavax/management/NotificationBroadcasterSupport;->getNotificationInfo()[Ljavax/management/MBeanNotificationInfo;
move-result-object v0
return-object v0
.end method