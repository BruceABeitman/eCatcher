.class public final Lcom/instagram/android/k/c;
.super Ljava/lang/Object;
.source "HashtagSearchUtil.java"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/instagram/android/k/c;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_b
    invoke-static {v0}, Lcom/instagram/android/k/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_f

    :catch_16
    move-exception v0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->g()V

    move-object v0, v1

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/instagram/android/k/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_7

    :catch_19
    move-exception v0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->g()V

    :goto_21
    return-void

    :cond_22
    const/4 v1, 0x0

    :try_start_23
    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/k/c;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/k/b/a;->b(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_19

    goto :goto_21
.end method

.method private static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/instagram/android/k/c;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/k/c;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
