.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$BoolKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ByteKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$ShortKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$IntKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LongKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$FloatKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CalendarKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$LocaleKD;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V

    return-void
.end method

.method private add(Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;)V
    .registers 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .registers 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    return-object v0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    :cond_1b
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_20
    return-object v0

    :cond_21
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    :cond_36
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_20

    :cond_3c
    const/4 v0, 0x0

    goto :goto_20
.end method
