.class public Lcom/fasterxml/jackson/databind/util/BeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net.sf.cglib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "org.hibernate.repackage.cglib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_2c
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected static isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groovy.lang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected static manglePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    move-object p0, v0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_23

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "is"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_16

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_16

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "getCallbacks"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    const-string v1, "getMetaClass"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_26
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
