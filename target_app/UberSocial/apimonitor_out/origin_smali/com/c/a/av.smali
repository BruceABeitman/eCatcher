.class Lcom/c/a/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/y;


# instance fields
.field private final a:Lcom/c/a/bv;


# direct methods
.method private constructor <init>(Lcom/c/a/bv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/av;->a:Lcom/c/a/bv;

    return-void
.end method

.method constructor <init>(Lcom/c/a/bv;Lcom/c/a/du;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/a/av;-><init>(Lcom/c/a/bv;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/c/a/av;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map$Entry;)Z
    .registers 4

    iget-object v1, p0, Lcom/c/a/av;->a:Lcom/c/a/bv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/bv;

    invoke-virtual {v0}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/a/bv;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/c/a/av;->a:Lcom/c/a/bv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/bv;

    invoke-virtual {v0}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/a/bv;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method
