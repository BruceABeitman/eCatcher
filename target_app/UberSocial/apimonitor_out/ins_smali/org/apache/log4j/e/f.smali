.class public Lorg/apache/log4j/e/f;
.super Lorg/apache/log4j/e/a;
.source "SourceFile"
.implements Ljavax/management/NotificationListener;
.field static c:Ljava/lang/Class;
.field static d:Ljava/lang/Class;
.field private static j:Lorg/apache/log4j/aa;
.field private e:[Ljavax/management/MBeanConstructorInfo;
.field private f:[Ljavax/management/MBeanOperationInfo;
.field private g:Ljava/util/Vector;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private k:Lorg/apache/log4j/aa;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/e/f;->c:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.e.f"
invoke-static {v0}, Lorg/apache/log4j/e/f;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/f;->c:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/e/f;->c:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>(Lorg/apache/log4j/aa;)V
.registers 4
const/4 v1, 0x1
invoke-direct {p0}, Lorg/apache/log4j/e/a;-><init>()V
new-array v0, v1, [Ljavax/management/MBeanConstructorInfo;
iput-object v0, p0, Lorg/apache/log4j/e/f;->e:[Ljavax/management/MBeanConstructorInfo;
new-array v0, v1, [Ljavax/management/MBeanOperationInfo;
iput-object v0, p0, Lorg/apache/log4j/e/f;->f:[Ljavax/management/MBeanOperationInfo;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
const-string v0, "This MBean acts as a management facade for a org.apache.log4j.Logger instance."
iput-object v0, p0, Lorg/apache/log4j/e/f;->i:Ljava/lang/String;
iput-object p1, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-direct {p0}, Lorg/apache/log4j/e/f;->f()V
return-void
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
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
const/4 v5, 0x0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/e/f;->e:[Ljavax/management/MBeanConstructorInfo;
new-instance v2, Ljavax/management/MBeanConstructorInfo;
const-string v3, "HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance"
aget-object v0, v0, v5
invoke-direct {v2, v3, v0}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
aput-object v2, v1, v5
iget-object v7, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
new-instance v0, Ljavax/management/MBeanAttributeInfo;
const-string v1, "name"
const-string v2, "java.lang.String"
const-string v3, "The name of this Logger."
move v6, v5
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
new-instance v6, Ljavax/management/MBeanAttributeInfo;
const-string v7, "priority"
const-string v8, "java.lang.String"
const-string v9, "The priority of this logger."
move v10, v4
move v11, v4
move v12, v5
invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
const/4 v0, 0x2
new-array v9, v0, [Ljavax/management/MBeanParameterInfo;
new-instance v0, Ljavax/management/MBeanParameterInfo;
const-string v1, "class name"
const-string v2, "java.lang.String"
const-string v3, "add an appender to this logger"
invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aput-object v0, v9, v5
new-instance v0, Ljavax/management/MBeanParameterInfo;
const-string v1, "appender name"
const-string v2, "java.lang.String"
const-string v3, "name of the appender"
invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aput-object v0, v9, v4
iget-object v0, p0, Lorg/apache/log4j/e/f;->f:[Ljavax/management/MBeanOperationInfo;
new-instance v6, Ljavax/management/MBeanOperationInfo;
const-string v7, "addAppender"
const-string v8, "addAppender(): add an appender"
const-string v10, "void"
move v11, v4
invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V
aput-object v6, v0, v5
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/lang/Object;
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
iget-object v3, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
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
const-string v0, "name"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v0}, Lorg/apache/log4j/aa;->j()Ljava/lang/String;
move-result-object v0
:goto_38
return-object v0
:cond_39
const-string v0, "priority"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v0}, Lorg/apache/log4j/aa;->l()Lorg/apache/log4j/v;
move-result-object v0
if-nez v0, :cond_4b
const/4 v0, 0x0
goto :goto_38
:cond_4b
invoke-virtual {v0}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_38
:cond_50
const-string v0, "appender="
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8a
:try_start_58
new-instance v0, Ljavax/management/ObjectName;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
:try_end_70
.catch Ljavax/management/MalformedObjectNameException; {:try_start_58 .. :try_end_70} :catch_71
.catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_70} :catch_af
goto :goto_38
:catch_71
move-exception v0
sget-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not create ObjectName"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
:goto_8a
:cond_8a
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
iget-object v2, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:catch_af
move-exception v0
sget-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not create ObjectName"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
goto :goto_8a
.end method
.method public a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
.registers 6
const-string v0, "addAppender"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x0
aget-object v0, p2, v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
aget-object v1, p2, v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/e/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Hello world."
:goto_17
return-object v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method protected a()Lorg/apache/log4j/aa;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
return-object v0
.end method
.method public a(Ljava/lang/Boolean;)V
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/e/f;->e()V
return-void
.end method
.method  a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
sget-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "addAppender called with "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
sget-object v0, Lorg/apache/log4j/e/f;->d:Ljava/lang/Class;
if-nez v0, :cond_3e
const-string v0, "org.apache.log4j.a"
invoke-static {v0}, Lorg/apache/log4j/e/f;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/f;->d:Ljava/lang/Class;
:goto_2e
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0, p2}, Lorg/apache/log4j/a;->a(Ljava/lang/String;)V
iget-object v1, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v1, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V
return-void
:cond_3e
sget-object v0, Lorg/apache/log4j/e/f;->d:Ljava/lang/Class;
goto :goto_2e
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
iget-object v3, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
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
iget-object v3, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
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
const-string v2, "priority"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_84
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_7e
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v1}, Lorg/apache/log4j/aa;->l()Lorg/apache/log4j/v;
move-result-object v1
const-string v2, "NULL"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7f
const/4 v0, 0x0
:goto_79
iget-object v1, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v1, v0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
:cond_7e
return-void
:cond_7f
invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
goto :goto_79
:cond_84
new-instance v0, Ljavax/management/AttributeNotFoundException;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Attribute "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, " not found in "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Ljavax/management/Notification;Ljava/lang/Object;)V
.registers 6
sget-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Received notification: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Ljavax/management/Notification;->getType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
invoke-virtual {p1}, Ljavax/management/Notification;->getUserData()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-virtual {p0, v0}, Lorg/apache/log4j/e/f;->b(Lorg/apache/log4j/a;)V
return-void
.end method
.method  b(Lorg/apache/log4j/a;)V
.registers 11
invoke-static {p1}, Lorg/apache/log4j/e/f;->a(Lorg/apache/log4j/a;)Ljava/lang/String;
move-result-object v7
sget-object v0, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Adding AppenderMBean for appender named "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
:try_start_1c
new-instance v0, Lorg/apache/log4j/e/c;
invoke-direct {v0, p1}, Lorg/apache/log4j/e/c;-><init>(Lorg/apache/log4j/a;)V
new-instance v1, Ljavax/management/ObjectName;
const-string v2, "log4j"
const-string v3, "appender"
invoke-direct {v1, v2, v3, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lorg/apache/log4j/e/f;->b:Ljavax/management/MBeanServer;
invoke-interface {v2, v1}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z
move-result v2
if-nez v2, :cond_70
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/e/f;->a(Ljava/lang/Object;Ljavax/management/ObjectName;)V
iget-object v8, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
new-instance v0, Ljavax/management/MBeanAttributeInfo;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "appender="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "javax.management.ObjectName"
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "The "
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, " appender."
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
const/4 v5, 0x1
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
:try_end_70
.catch Ljavax/management/JMException; {:try_start_1c .. :try_end_70} :catch_71
.catch Ljava/beans/IntrospectionException; {:try_start_1c .. :try_end_70} :catch_91
.catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_70} :catch_b1
:cond_70
:goto_70
return-void
:catch_71
move-exception v0
sget-object v1, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not add appenderMBean for ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_70
:catch_91
move-exception v0
sget-object v1, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not add appenderMBean for ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_70
:catch_b1
move-exception v0
sget-object v1, Lorg/apache/log4j/e/f;->j:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not add appenderMBean for ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_70
.end method
.method public d()Ljavax/management/MBeanInfo;
.registers 8
iget-object v0, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
new-array v3, v0, [Ljavax/management/MBeanAttributeInfo;
iget-object v0, p0, Lorg/apache/log4j/e/f;->g:Ljava/util/Vector;
invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
new-instance v0, Ljavax/management/MBeanInfo;
iget-object v1, p0, Lorg/apache/log4j/e/f;->h:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/log4j/e/f;->i:Ljava/lang/String;
iget-object v4, p0, Lorg/apache/log4j/e/f;->e:[Ljavax/management/MBeanConstructorInfo;
iget-object v5, p0, Lorg/apache/log4j/e/f;->f:[Ljavax/management/MBeanOperationInfo;
const/4 v6, 0x0
new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V
return-object v0
.end method
.method  e()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/e/f;->k:Lorg/apache/log4j/aa;
invoke-virtual {v0}, Lorg/apache/log4j/aa;->c()Ljava/util/Enumeration;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/a;
invoke-virtual {p0, v0}, Lorg/apache/log4j/e/f;->b(Lorg/apache/log4j/a;)V
goto :goto_6
:cond_16
return-void
.end method