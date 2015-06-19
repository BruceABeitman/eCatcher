.class public final Lcom/millennialmedia/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_11
    new-instance v0, Lcom/millennialmedia/a/a/b/f$6;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/f$6;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Constructor;)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .registers 6

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/millennialmedia/a/a/b/f$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$7;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    :goto_15
    return-object v0

    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/millennialmedia/a/a/b/f$8;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/a/a/b/f$8;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Type;)V

    goto :goto_15

    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/millennialmedia/a/a/b/f$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$9;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/millennialmedia/a/a/b/f$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$10;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_40
    new-instance v0, Lcom/millennialmedia/a/a/b/f$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$11;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/millennialmedia/a/a/b/f$12;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$12;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_5c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7f

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7f

    new-instance v0, Lcom/millennialmedia/a/a/b/f$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$2;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_7f
    new-instance v0, Lcom/millennialmedia/a/a/b/f$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$3;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_15

    :cond_85
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .registers 4

    new-instance v0, Lcom/millennialmedia/a/a/b/f$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/a/a/b/f$4;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;
    .registers 5

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/i;

    if-eqz v0, :cond_19

    new-instance v1, Lcom/millennialmedia/a/a/b/f$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/millennialmedia/a/a/b/f$1;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/i;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/i;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/millennialmedia/a/a/b/f$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/millennialmedia/a/a/b/f$5;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/i;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_18

    :cond_2a
    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/b/f;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/millennialmedia/a/a/b/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-direct {p0, v2, v1}, Lcom/millennialmedia/a/a/b/f;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
