.class public Lorg/apache/log4j/e/e;
.super Lorg/apache/log4j/e/a;
.source "SourceFile"
.field static c:Ljava/lang/Class;
.field static d:Ljava/lang/Class;
.field static e:Ljava/lang/Class;
.field static f:Ljava/lang/Class;
.field private static m:Lorg/apache/log4j/aa;
.field private g:[Ljavax/management/MBeanConstructorInfo;
.field private h:Ljava/util/Vector;
.field private i:Ljava/lang/String;
.field private j:Ljava/util/Hashtable;
.field private k:[Ljavax/management/MBeanOperationInfo;
.field private l:Ljava/lang/String;
.field private n:Lorg/apache/log4j/u;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/e/e;->c:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.e.e"
invoke-static {v0}, Lorg/apache/log4j/e/e;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/e;->c:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/e/e;->c:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>(Lorg/apache/log4j/u;)V
.registers 5
const/4 v2, 0x1
invoke-direct {p0}, Lorg/apache/log4j/e/a;-><init>()V
new-array v0, v2, [Ljavax/management/MBeanConstructorInfo;
iput-object v0, p0, Lorg/apache/log4j/e/e;->g:[Ljavax/management/MBeanConstructorInfo;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/e/e;->h:Ljava/util/Vector;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
new-instance v0, Ljava/util/Hashtable;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/e/e;->j:Ljava/util/Hashtable;
new-array v0, v2, [Ljavax/management/MBeanOperationInfo;
iput-object v0, p0, Lorg/apache/log4j/e/e;->k:[Ljavax/management/MBeanOperationInfo;
const-string v0, "This MBean acts as a management facade for log4j layouts."
iput-object v0, p0, Lorg/apache/log4j/e/e;->l:Ljava/lang/String;
iput-object p1, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
invoke-direct {p0}, Lorg/apache/log4j/e/e;->e()V
return-void
.end method
.method private a(Ljava/lang/Class;)Z
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z
move-result v0
if-eqz v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
sget-object v0, Lorg/apache/log4j/e/e;->e:Ljava/lang/Class;
if-nez v0, :cond_19
const-string v0, "java.lang.String"
invoke-static {v0}, Lorg/apache/log4j/e/e;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/e;->e:Ljava/lang/Class;
:goto_15
if-ne p1, v0, :cond_1c
move v0, v1
goto :goto_8
:cond_19
sget-object v0, Lorg/apache/log4j/e/e;->e:Ljava/lang/Class;
goto :goto_15
:cond_1c
sget-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
if-nez v0, :cond_30
const-string v0, "org.apache.log4j.v"
invoke-static {v0}, Lorg/apache/log4j/e/e;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
:goto_28
invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_33
move v0, v1
goto :goto_8
:cond_30
sget-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
goto :goto_28
:cond_33
const/4 v0, 0x0
goto :goto_8
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
.method private e()V
.registers 14
const/4 v4, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/e/e;->g:[Ljavax/management/MBeanConstructorInfo;
new-instance v2, Ljavax/management/MBeanConstructorInfo;
const-string v3, "LayoutDynamicMBean(): Constructs a LayoutDynamicMBean instance"
aget-object v0, v0, v6
invoke-direct {v2, v3, v0}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
aput-object v2, v1, v6
iget-object v0, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;
move-result-object v0
invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
move-result-object v8
array-length v9, v8
move v7, v6
:goto_27
if-ge v7, v9, :cond_82
aget-object v0, v8, v7
invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;
move-result-object v1
aget-object v0, v8, v7
invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;
move-result-object v10
aget-object v0, v8, v7
invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;
move-result-object v11
if-eqz v10, :cond_74
invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
invoke-direct {p0, v2}, Lorg/apache/log4j/e/e;->a(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_74
sget-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
if-nez v0, :cond_78
const-string v0, "org.apache.log4j.v"
invoke-static {v0}, Lorg/apache/log4j/e/e;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
:goto_53
invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_7b
const-string v2, "java.lang.String"
:goto_5b
iget-object v12, p0, Lorg/apache/log4j/e/e;->h:Ljava/util/Vector;
new-instance v0, Ljavax/management/MBeanAttributeInfo;
const-string v3, "Dynamic"
if-eqz v11, :cond_80
move v5, v4
:goto_64
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/log4j/e/e;->j:Ljava/util/Hashtable;
new-instance v2, Lorg/apache/log4j/e/g;
invoke-direct {v2, v10, v11}, Lorg/apache/log4j/e/g;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_74
add-int/lit8 v0, v7, 0x1
move v7, v0
goto :goto_27
:cond_78
sget-object v0, Lorg/apache/log4j/e/e;->d:Ljava/lang/Class;
goto :goto_53
:cond_7b
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
goto :goto_5b
:cond_80
move v5, v6
goto :goto_64
:cond_82
new-array v10, v6, [Ljavax/management/MBeanParameterInfo;
iget-object v0, p0, Lorg/apache/log4j/e/e;->k:[Ljavax/management/MBeanOperationInfo;
new-instance v7, Ljavax/management/MBeanOperationInfo;
const-string v8, "activateOptions"
const-string v9, "activateOptions(): add an layout"
const-string v11, "void"
move v12, v4
invoke-direct/range {v7 .. v12}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V
aput-object v7, v0, v6
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/lang/Object;
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_2b
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute name cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke a getter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute name"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_2b
iget-object v0, p0, Lorg/apache/log4j/e/e;->j:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/e/g;
sget-object v2, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "----name="
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, ", mu="
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
if-eqz v0, :cond_85
iget-object v2, v0, Lorg/apache/log4j/e/g;->a:Ljava/lang/reflect/Method;
if-eqz v2, :cond_85
:try_start_5b
iget-object v0, v0, Lorg/apache/log4j/e/g;->a:Ljava/lang/reflect/Method;
iget-object v2, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_63
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5b .. :try_end_63} :catch_65
.catch Ljava/lang/IllegalAccessException; {:try_start_5b .. :try_end_63} :catch_7f
.catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_63} :catch_82
move-result-object v0
:goto_64
return-object v0
:catch_65
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v2
instance-of v2, v2, Ljava/lang/InterruptedException;
if-nez v2, :cond_76
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
instance-of v0, v0, Ljava/io/InterruptedIOException;
if-eqz v0, :cond_7d
:cond_76
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_7d
move-object v0, v1
goto :goto_64
:catch_7f
move-exception v0
move-object v0, v1
goto :goto_64
:catch_82
move-exception v0
move-object v0, v1
goto :goto_64
:cond_85
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
iget-object v2, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
.registers 5
const-string v0, "activateOptions"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
instance-of v0, v0, Lorg/apache/log4j/k/o;
if-eqz v0, :cond_16
iget-object v0, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
invoke-interface {v0}, Lorg/apache/log4j/k/o;->i()V
const-string v0, "Options activated."
:goto_15
return-object v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method protected a()Lorg/apache/log4j/aa;
.registers 2
sget-object v0, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
return-object v0
.end method
.method public a(Ljavax/management/Attribute;)V
.registers 9
const/4 v6, 0x0
if-nez p1, :cond_2b
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke a setter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_2b
invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;
move-result-object v1
if-nez v3, :cond_5d
new-instance v0, Ljavax/management/RuntimeOperationsException;
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Attribute name cannot be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Cannot invoke the setter of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " with null attribute name"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
throw v0
:cond_5d
iget-object v0, p0, Lorg/apache/log4j/e/e;->j:Ljava/util/Hashtable;
invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/e/g;
if-eqz v0, :cond_cf
iget-object v2, v0, Lorg/apache/log4j/e/g;->b:Ljava/lang/reflect/Method;
if-eqz v2, :cond_cf
const/4 v2, 0x1
new-array v4, v2, [Ljava/lang/Object;
iget-object v2, v0, Lorg/apache/log4j/e/g;->b:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v2
aget-object v5, v2, v6
sget-object v2, Lorg/apache/log4j/e/e;->f:Ljava/lang/Class;
if-nez v2, :cond_9a
const-string v2, "org.apache.log4j.ag"
invoke-static {v2}, Lorg/apache/log4j/e/e;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
sput-object v2, Lorg/apache/log4j/e/e;->f:Ljava/lang/Class;
:goto_82
if-ne v5, v2, :cond_90
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v3}, Lorg/apache/log4j/e/e;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/apache/log4j/v;
invoke-static {v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v1
:cond_90
aput-object v1, v4, v6
:try_start_92
iget-object v0, v0, Lorg/apache/log4j/e/g;->b:Ljava/lang/reflect/Method;
iget-object v1, p0, Lorg/apache/log4j/e/e;->n:Lorg/apache/log4j/u;
invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_99
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_92 .. :try_end_99} :catch_9d
.catch Ljava/lang/IllegalAccessException; {:try_start_92 .. :try_end_99} :catch_bd
.catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_99} :catch_c6
:goto_99
return-void
:cond_9a
sget-object v2, Lorg/apache/log4j/e/e;->f:Ljava/lang/Class;
goto :goto_82
:catch_9d
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/lang/InterruptedException;
if-nez v1, :cond_ae
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_b5
:cond_ae
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_b5
sget-object v1, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
const-string v2, "FIXME"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_99
:catch_bd
move-exception v0
sget-object v1, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
const-string v2, "FIXME"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_99
:catch_c6
move-exception v0
sget-object v1, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
const-string v2, "FIXME"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_99
:cond_cf
new-instance v0, Ljavax/management/AttributeNotFoundException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Attribute "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
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
.method public d()Ljavax/management/MBeanInfo;
.registers 8
sget-object v0, Lorg/apache/log4j/e/e;->m:Lorg/apache/log4j/aa;
const-string v1, "getMBeanInfo called."
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lorg/apache/log4j/e/e;->h:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
new-array v3, v0, [Ljavax/management/MBeanAttributeInfo;
iget-object v0, p0, Lorg/apache/log4j/e/e;->h:Ljava/util/Vector;
invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
new-instance v0, Ljavax/management/MBeanInfo;
iget-object v1, p0, Lorg/apache/log4j/e/e;->i:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/log4j/e/e;->l:Ljava/lang/String;
iget-object v4, p0, Lorg/apache/log4j/e/e;->g:[Ljavax/management/MBeanConstructorInfo;
iget-object v5, p0, Lorg/apache/log4j/e/e;->k:[Ljavax/management/MBeanOperationInfo;
const/4 v6, 0x0
new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;
invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V
return-object v0
.end method