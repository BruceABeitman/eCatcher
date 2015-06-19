.class Lcom/glympse/android/lib/ge;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Lcom/glympse/android/lib/bu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/glympse/android/lib/bu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private qx:I

.field private qy:Lcom/glympse/android/lib/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation
.end field

.field private qz:Lcom/glympse/android/lib/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-void
.end method

.method private d(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->bf()Lcom/glympse/android/lib/bt;

    move-result-object v1

    invoke-interface {p1, v2}, Lcom/glympse/android/lib/bt;->d(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    if-nez v1, :cond_1c

    iput-object v2, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    :goto_15
    iget v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-object v0

    :cond_1c
    invoke-interface {v1, v2}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    goto :goto_15
.end method

.method private e(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->bg()Lcom/glympse/android/lib/bt;

    move-result-object v1

    invoke-interface {p1, v2}, Lcom/glympse/android/lib/bt;->d(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    if-nez v1, :cond_1c

    iput-object v2, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_15
    iget v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-object v0

    :cond_1c
    invoke-interface {v1, v2}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    goto :goto_15
.end method

.method private f(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->bf()Lcom/glympse/android/lib/bt;

    move-result-object v1

    invoke-interface {p1}, Lcom/glympse/android/lib/bt;->bg()Lcom/glympse/android/lib/bt;

    move-result-object v2

    if-nez v2, :cond_1f

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_11
    if-nez v1, :cond_26

    iput-object v2, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    :goto_15
    invoke-interface {p1, v3}, Lcom/glympse/android/lib/bt;->d(Ljava/lang/Object;)V

    iget v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-object v0

    :cond_1f
    invoke-interface {v2, v1}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    invoke-interface {p1, v3}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    goto :goto_11

    :cond_26
    invoke-interface {v1, v2}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    invoke-interface {p1, v3}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    goto :goto_15
.end method

.method private g(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    new-instance v1, Lcom/glympse/android/lib/gf;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, Lcom/glympse/android/lib/gf;-><init>(Lcom/glympse/android/lib/bt;Ljava/lang/Object;Lcom/glympse/android/lib/bt;)V

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    if-nez v0, :cond_15

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    :goto_e
    iget v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-object v1

    :cond_15
    invoke-interface {v0, v1}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    goto :goto_e
.end method

.method private h(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    new-instance v1, Lcom/glympse/android/lib/gf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/glympse/android/lib/gf;-><init>(Lcom/glympse/android/lib/bt;Ljava/lang/Object;Lcom/glympse/android/lib/bt;)V

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    if-nez v0, :cond_15

    iput-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_e
    iget v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-object v1

    :cond_15
    invoke-interface {v0, v1}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    goto :goto_e
.end method


# virtual methods
.method public bh()Lcom/glympse/android/lib/bt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    return-object v0
.end method

.method public bi()Lcom/glympse/android/lib/bt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    return-object v0
.end method

.method public bj()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/ge;->d(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public bk()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/ge;->e(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public c(Lcom/glympse/android/lib/bt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ge;->f(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ge;->g(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/glympse/android/lib/bt",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ge;->h(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_16

    iget-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_5
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-direct {p0, v1}, Lcom/glympse/android/lib/ge;->f(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;

    :goto_10
    return v0

    :cond_11
    invoke-interface {v1}, Lcom/glympse/android/lib/bt;->bf()Lcom/glympse/android/lib/bt;

    move-result-object v1

    goto :goto_5

    :cond_16
    iget-object v1, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_18
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, v1}, Lcom/glympse/android/lib/ge;->f(Lcom/glympse/android/lib/bt;)Ljava/lang/Object;

    goto :goto_10

    :cond_28
    invoke-interface {v1}, Lcom/glympse/android/lib/bt;->bf()Lcom/glympse/android/lib/bt;

    move-result-object v1

    goto :goto_18

    :cond_2d
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeAll()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    :goto_3
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/glympse/android/lib/bt;->bf()Lcom/glympse/android/lib/bt;

    move-result-object v1

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/bt;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/bt;->a(Lcom/glympse/android/lib/bt;)V

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/bt;->b(Lcom/glympse/android/lib/bt;)V

    move-object v0, v1

    goto :goto_3

    :cond_14
    iput-object v2, p0, Lcom/glympse/android/lib/ge;->qy:Lcom/glympse/android/lib/bt;

    iput-object v2, p0, Lcom/glympse/android/lib/ge;->qz:Lcom/glympse/android/lib/bt;

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ge;->qx:I

    return v0
.end method
