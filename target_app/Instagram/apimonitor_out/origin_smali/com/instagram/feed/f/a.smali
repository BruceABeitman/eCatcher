.class public final Lcom/instagram/feed/f/a;
.super Ljava/lang/Object;
.source "FeedContinuationState.java"


# instance fields
.field private a:Lcom/instagram/feed/f/b;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    iput-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    return-void
.end method

.method public static a()Lcom/instagram/feed/f/a;
    .registers 1

    new-instance v0, Lcom/instagram/feed/f/a;

    invoke-direct {v0}, Lcom/instagram/feed/f/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    iput-object p2, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/z;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/z;

    invoke-interface {v0}, Lcom/instagram/feed/d/z;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    iput-object v1, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    iput-object v0, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    :goto_1e
    return-void

    :cond_1f
    sget-object v0, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    iput-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    goto :goto_1e
.end method

.method public final b()Lcom/instagram/feed/f/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/a;->a:Lcom/instagram/feed/f/b;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/f/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/feed/f/a;->c:Z

    return v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/feed/f/a;->c:Z

    return-void
.end method
