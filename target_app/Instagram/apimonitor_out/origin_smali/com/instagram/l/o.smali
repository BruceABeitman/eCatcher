.class final Lcom/instagram/l/o;
.super Lcom/instagram/api/k/a/h;
.source "QuickExperimentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Lcom/instagram/l/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/l/k;


# direct methods
.method private constructor <init>(Lcom/instagram/l/k;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/l/o;->a:Lcom/instagram/l/k;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/l/k;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/l/o;-><init>(Lcom/instagram/l/k;)V

    return-void
.end method

.method private a(Lcom/instagram/l/a/b;)V
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/l/a/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/l/d;

    iget-object v2, p0, Lcom/instagram/l/o;->a:Lcom/instagram/l/k;

    invoke-static {v2}, Lcom/instagram/l/k;->a(Lcom/instagram/l/k;)Lcom/instagram/l/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/instagram/l/e;->a(Lcom/instagram/l/d;)V

    invoke-static {}, Lcom/instagram/l/k;->d()Ljava/lang/Class;

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lcom/instagram/l/o;->a:Lcom/instagram/l/k;

    invoke-static {v0}, Lcom/instagram/l/k;->a(Lcom/instagram/l/k;)Lcom/instagram/l/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/l/e;->c()V

    return-void
.end method

.method private b(Lcom/instagram/api/k/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/l/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/l/o;->a:Lcom/instagram/l/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/l/k;->a(Lcom/instagram/l/k;Z)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V

    iget-object v0, p0, Lcom/instagram/l/o;->a:Lcom/instagram/l/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/l/k;->a(Lcom/instagram/l/k;Z)Z

    return-void
.end method

.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/l/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/l/k;->d()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->k()Ljava/lang/String;

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/l/a/b;

    invoke-direct {p0, p1}, Lcom/instagram/l/o;->a(Lcom/instagram/l/a/b;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/api/k/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/l/o;->b(Lcom/instagram/api/k/a/i;)V

    return-void
.end method
