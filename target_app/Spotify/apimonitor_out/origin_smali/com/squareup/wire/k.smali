.class final Lcom/squareup/wire/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/MessageAdapter$ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/squareup/wire/k;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    goto :goto_5
.end method

.method final a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_8
.end method

.method final a(ILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_20

    new-instance v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    invoke-direct {v0}, Lcom/squareup/wire/MessageAdapter$ImmutableList;-><init>()V

    iget-object v1, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    :cond_17
    iget-object v1, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-static {v0, p2}, Lcom/squareup/wire/MessageAdapter$ImmutableList;->a(Lcom/squareup/wire/MessageAdapter$ImmutableList;Ljava/lang/Object;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/squareup/wire/k;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;

    goto :goto_5
.end method
