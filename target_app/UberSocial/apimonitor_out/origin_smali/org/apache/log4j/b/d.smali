.class public Lorg/apache/log4j/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/lang/Class;

.field static f:Ljava/lang/Class;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:[Ljava/beans/PropertyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/b/d;

    invoke-direct {v0, p0}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/b/d;->a(Ljava/util/Properties;Ljava/lang/String;)V

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


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/log4j/b/d;->a()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;

    aget-object v0, v1, v0

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object p1, v1

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/b/d;->d:Ljava/lang/Class;

    if-nez v0, :cond_29

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/b/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/b/d;->d:Ljava/lang/Class;

    :goto_15
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_29
    sget-object v0, Lorg/apache/log4j/b/d;->d:Ljava/lang/Class;

    goto :goto_15

    :cond_2c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_3a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4d
    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_58
    sget-object v0, Lorg/apache/log4j/b/d;->e:Ljava/lang/Class;

    if-nez v0, :cond_71

    const-string v0, "org.apache.log4j.ag"

    invoke-static {v0}, Lorg/apache/log4j/b/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/b/d;->e:Ljava/lang/Class;

    :goto_64
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_74

    sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {v2, v0}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;

    move-result-object p1

    goto :goto_4

    :cond_71
    sget-object v0, Lorg/apache/log4j/b/d;->e:Ljava/lang/Class;

    goto :goto_64

    :cond_74
    sget-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    if-nez v0, :cond_98

    const-string v0, "org.apache.log4j.k.e"

    invoke-static {v0}, Lorg/apache/log4j/b/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    :goto_80
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    if-nez v0, :cond_9b

    const-string v0, "org.apache.log4j.k.e"

    invoke-static {v0}, Lorg/apache/log4j/b/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    :goto_92
    invoke-static {v2, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_4

    :cond_98
    sget-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    goto :goto_80

    :cond_9b
    sget-object v0, Lorg/apache/log4j/b/d;->f:Ljava/lang/Class;

    goto :goto_92

    :cond_9e
    move-object p1, v1

    goto/16 :goto_4
.end method

.method protected a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;
    :try_end_10
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to introspect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/beans/IntrospectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyDescriptor;

    iput-object v0, p0, Lorg/apache/log4j/b/d;->b:[Ljava/beans/PropertyDescriptor;

    goto :goto_10
.end method

.method public a(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lorg/apache/log4j/b/e;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No setter for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v3, :cond_36

    new-instance v0, Lorg/apache/log4j/b/e;

    const-string v1, "#params for setter != 1"

    invoke-direct {v0, v1}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v2, 0x0

    :try_start_37
    aget-object v2, v1, v2

    invoke-virtual {p0, p3, v2}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_60

    move-result-object v2

    if-nez v2, :cond_86

    new-instance v0, Lorg/apache/log4j/b/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Conversion to type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_60
    move-exception v0

    new-instance v2, Lorg/apache/log4j/b/e;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Conversion to type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] failed. Reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_86
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Setting property ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] to ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :try_start_ac
    iget-object v1, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_ac .. :try_end_b7} :catch_b8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ac .. :try_end_b7} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b7} :catch_dd

    return-void

    :catch_b8
    move-exception v0

    new-instance v1, Lorg/apache/log4j/b/e;

    invoke-direct {v1, v0}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_bf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_d0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_d7

    :cond_d0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_d7
    new-instance v1, Lorg/apache/log4j/b/e;

    invoke-direct {v1, v0}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_dd
    move-exception v0

    new-instance v1, Lorg/apache/log4j/b/e;

    invoke-direct {v1, v0}, Lorg/apache/log4j/b/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-nez v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3e
    :try_start_3e
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/log4j/b/d;->a(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/apache/log4j/b/e; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2

    :catch_42
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to set property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "] to value \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lorg/apache/log4j/b/e;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x2e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gtz v3, :cond_8

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "errorhandler"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_3c
    iget-object v0, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/log4j/a;

    if-nez v0, :cond_8

    :cond_42
    invoke-static {v4}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v5

    if-eqz v5, :cond_14a

    sget-object v0, Lorg/apache/log4j/b/d;->c:Ljava/lang/Class;

    if-nez v0, :cond_dd

    const-string v0, "org.apache.log4j.k.o"

    invoke-static {v0}, Lorg/apache/log4j/b/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/b/d;->c:Ljava/lang/Class;

    :goto_58
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_14a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v0, v6, v7}, Lorg/apache/log4j/c/p;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/k/o;

    new-instance v6, Lorg/apache/log4j/b/d;

    invoke-direct {v6, v0}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lorg/apache/log4j/b/d;->a(Ljava/util/Properties;Ljava/lang/String;)V

    :try_start_a3
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a3 .. :try_end_b2} :catch_b4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a3 .. :try_end_b2} :catch_e1
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_b2} :catch_121

    goto/16 :goto_8

    :catch_b4
    move-exception v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to set property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] to value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_dd
    sget-object v0, Lorg/apache/log4j/b/d;->c:Ljava/lang/Class;

    goto/16 :goto_58

    :catch_e1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/InterruptedException;

    if-nez v5, :cond_f2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_f9

    :cond_f2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_f9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to set property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] to value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_121
    move-exception v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to set property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] to value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_14a
    invoke-virtual {p0, v4, v3}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14f
    invoke-virtual {p0}, Lorg/apache/log4j/b/d;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/log4j/k/o;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/log4j/b/d;->a:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/k/o;

    invoke-interface {v0}, Lorg/apache/log4j/k/o;->i()V

    :cond_d
    return-void
.end method
