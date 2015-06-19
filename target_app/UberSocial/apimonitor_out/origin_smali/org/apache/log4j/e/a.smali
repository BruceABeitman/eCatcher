.class public abstract Lorg/apache/log4j/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/management/DynamicMBean;
.implements Ljavax/management/MBeanRegistration;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljavax/management/MBeanServer;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/e/a;->c:Ljava/util/Vector;

    return-void
.end method

.method protected static a(Lorg/apache/log4j/a;)Ljava/lang/String;
    .registers 3

    invoke-interface {p0}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method


# virtual methods
.method public a(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .registers 7

    if-nez p1, :cond_24

    new-instance v0, Ljavax/management/RuntimeOperationsException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AttributeList attributes cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot invoke a setter of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/e/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v1, Ljavax/management/AttributeList;

    invoke-direct {v1}, Ljavax/management/AttributeList;-><init>()V

    invoke-virtual {p1}, Ljavax/management/AttributeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, v1

    :goto_30
    return-object v0

    :cond_31
    invoke-virtual {p1}, Ljavax/management/AttributeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/Attribute;

    :try_start_41
    invoke-virtual {p0, v0}, Lorg/apache/log4j/e/a;->setAttribute(Ljavax/management/Attribute;)V

    invoke-virtual {v0}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/e/a;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljavax/management/Attribute;

    invoke-direct {v4, v0, v3}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_54
    .catch Ljavax/management/JMException; {:try_start_41 .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_54} :catch_5a

    goto :goto_35

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljavax/management/JMException;->printStackTrace()V

    goto :goto_35

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_35

    :cond_5f
    move-object v0, v1

    goto :goto_30
.end method

.method public a([Ljava/lang/String;)Ljavax/management/AttributeList;
    .registers 7

    if-nez p1, :cond_24

    new-instance v0, Ljavax/management/RuntimeOperationsException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attributeNames[] cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot invoke a getter of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/e/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v1, Ljavax/management/AttributeList;

    invoke-direct {v1}, Ljavax/management/AttributeList;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_2e

    move-object v0, v1

    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    array-length v2, p1

    if-ge v0, v2, :cond_4f

    :try_start_32
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/log4j/e/a;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljavax/management/Attribute;

    aget-object v4, p1, v0

    invoke-direct {v3, v4, v2}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_42
    .catch Ljavax/management/JMException; {:try_start_32 .. :try_end_42} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_42} :catch_4a

    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :catch_45
    move-exception v2

    invoke-virtual {v2}, Ljavax/management/JMException;->printStackTrace()V

    goto :goto_42

    :catch_4a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_42

    :cond_4f
    move-object v0, v1

    goto :goto_2d
.end method

.method public a(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Ljavax/management/ObjectName;
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/e/a;->a()Lorg/apache/log4j/aa;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "preRegister called. Server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/log4j/e/a;->b:Ljavax/management/MBeanServer;

    return-object p2
.end method

.method protected abstract a()Lorg/apache/log4j/aa;
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/e/a;->b:Ljavax/management/MBeanServer;

    invoke-interface {v0, p1, p2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    iget-object v0, p0, Lorg/apache/log4j/e/a;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/log4j/e/a;->a()Lorg/apache/log4j/aa;

    move-result-object v0

    const-string v1, "postDeregister is called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/log4j/e/a;->a()Lorg/apache/log4j/aa;

    move-result-object v0

    const-string v1, "preDeregister called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/e/a;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/ObjectName;

    :try_start_1b
    iget-object v2, p0, Lorg/apache/log4j/e/a;->b:Ljavax/management/MBeanServer;

    invoke-interface {v2, v0}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_20
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_1b .. :try_end_20} :catch_21
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_1b .. :try_end_20} :catch_41

    goto :goto_f

    :catch_21
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/log4j/e/a;->a()Lorg/apache/log4j/aa;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing MBean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V

    goto :goto_f

    :catch_41
    move-exception v2

    invoke-virtual {p0}, Lorg/apache/log4j/e/a;->a()Lorg/apache/log4j/aa;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Failed unregistering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V

    goto :goto_f

    :cond_61
    return-void
.end method
