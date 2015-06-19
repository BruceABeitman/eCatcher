.class public Lorg/apache/log4j/b/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected static final a:[Ljava/lang/Object;
.field static d:Ljava/lang/Class;
.field static e:Ljava/lang/Class;
.field protected b:Ljava/lang/Object;
.field protected c:[Ljava/beans/PropertyDescriptor;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
sput-object v0, Lorg/apache/log4j/b/a;->a:[Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;
move-result-object v0
invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/b/a;->c:[Ljava/beans/PropertyDescriptor;
iput-object p1, p0, Lorg/apache/log4j/b/a;->b:Ljava/lang/Object;
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
.method public static a(Ljava/lang/Object;Lorg/apache/log4j/b/b;Ljava/lang/String;)V
.registers 6
:try_start_0
new-instance v0, Lorg/apache/log4j/b/a;
invoke-direct {v0, p0}, Lorg/apache/log4j/b/a;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/b/a;->a(Lorg/apache/log4j/b/b;Ljava/lang/String;)V
:try_end_8
.catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Failed to introspect object "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public a(Lorg/apache/log4j/b/b;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lorg/apache/log4j/b/a;->c:[Ljava/beans/PropertyDescriptor;
array-length v1, v1
if-ge v0, v1, :cond_95
iget-object v1, p0, Lorg/apache/log4j/b/a;->c:[Ljava/beans/PropertyDescriptor;
aget-object v1, v1, v0
invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;
move-result-object v1
if-nez v1, :cond_13
:cond_10
:goto_10
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_13
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0, v2}, Lorg/apache/log4j/b/a;->a(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_10
iget-object v2, p0, Lorg/apache/log4j/b/a;->c:[Ljava/beans/PropertyDescriptor;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;
move-result-object v2
:try_start_25
iget-object v3, p0, Lorg/apache/log4j/b/a;->b:Ljava/lang/Object;
sget-object v4, Lorg/apache/log4j/b/a;->a:[Ljava/lang/Object;
invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_10
iget-object v3, p0, Lorg/apache/log4j/b/a;->b:Ljava/lang/Object;
invoke-interface {p1, v3, p2, v2, v1}, Lorg/apache/log4j/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
:try_end_34
.catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_34} :catch_35
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_34} :catch_4d
.catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_34} :catch_7c
goto :goto_10
:catch_35
move-exception v1
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Failed to get value of property "
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
goto :goto_10
:catch_4d
move-exception v1
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v3
instance-of v3, v3, Ljava/lang/InterruptedException;
if-nez v3, :cond_5e
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_65
:cond_5e
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_65
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Failed to get value of property "
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
goto :goto_10
:catch_7c
move-exception v1
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Failed to get value of property "
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
goto/16 :goto_10
:cond_95
return-void
.end method
.method protected a(Ljava/lang/Class;)Z
.registers 3
sget-object v0, Lorg/apache/log4j/b/a;->d:Ljava/lang/Class;
if-nez v0, :cond_3e
const-string v0, "java.lang.String"
invoke-static {v0}, Lorg/apache/log4j/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/b/a;->d:Ljava/lang/Class;
:goto_c
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_3c
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_3c
sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_3c
sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_3c
sget-object v0, Lorg/apache/log4j/b/a;->e:Ljava/lang/Class;
if-nez v0, :cond_41
const-string v0, "org.apache.log4j.ag"
invoke-static {v0}, Lorg/apache/log4j/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/b/a;->e:Ljava/lang/Class;
:goto_36
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_44
:cond_3c
const/4 v0, 0x1
:goto_3d
return v0
:cond_3e
sget-object v0, Lorg/apache/log4j/b/a;->d:Ljava/lang/Class;
goto :goto_c
:cond_41
sget-object v0, Lorg/apache/log4j/b/a;->e:Ljava/lang/Class;
goto :goto_36
:cond_44
const/4 v0, 0x0
goto :goto_3d
.end method