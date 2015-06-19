.class public Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "CreatorCollector.java"


# instance fields
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected _booleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected final _canFixAccess:Z

.field protected _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

.field protected _delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _doubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field protected _intCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _longCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

.field protected _propertyBasedCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _stringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    return-void
.end method

.method private _fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    :cond_f
    return-object p1
.end method


# virtual methods
.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_booleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_booleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "delegate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_doubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "double"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_doubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public addIncompeteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    :cond_6
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_intCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_intCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_longCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_longCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .registers 9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_6b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    array-length v3, p2

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_6b

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    :cond_2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_67

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Duplicate creator property \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_6b
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_stringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_stringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-nez v1, :cond_3d

    const/4 v3, 0x0

    :goto_11
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_stringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_intCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_longCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_doubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_booleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureIncompleteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    return-object v0

    :cond_3d
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    array-length v3, v1

    move v1, v2

    :goto_45
    if-ge v1, v3, :cond_61

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    aget-object v4, v4, v1

    if-nez v4, :cond_5e

    :goto_4d
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_11

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_61
    move v1, v2

    goto :goto_4d
.end method

.method public hasDefaultCreator()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDefaultConstructor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .registers 3

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultConstructor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;)V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    goto :goto_9
.end method

.method protected verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .registers 7

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflicting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " creators: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method
