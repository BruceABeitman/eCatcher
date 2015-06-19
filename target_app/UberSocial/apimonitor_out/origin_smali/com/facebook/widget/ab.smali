.class Lcom/facebook/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/bi;

.field private b:Ljava/util/List;

.field private c:Lcom/facebook/b/l;

.field private d:Lcom/facebook/widget/ad;

.field private e:Lcom/facebook/bj;

.field private f:Lcom/facebook/bf;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    iput-object v0, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/bi;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    iput-object v0, p0, Lcom/facebook/widget/ab;->e:Lcom/facebook/bj;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ab;)Lcom/facebook/bi;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/bi;

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/facebook/b/l;Lcom/facebook/aw;)Z
    .registers 6

    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-virtual {v0, p2}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/facebook/b/p;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz p3, :cond_33

    invoke-virtual {p3}, Lcom/facebook/aw;->b()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p3}, Lcom/facebook/aw;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/b/p;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/facebook/widget/LoginButton;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set additional permissions when session is already open."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x1

    goto :goto_32
.end method

.method static synthetic b(Lcom/facebook/widget/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/ab;)Lcom/facebook/bj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->e:Lcom/facebook/bj;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/widget/ab;)Lcom/facebook/b/l;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/ab;)Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->f:Lcom/facebook/bf;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/ab;)Lcom/facebook/widget/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->d:Lcom/facebook/widget/ad;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/widget/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->d:Lcom/facebook/widget/ad;

    return-object v0
.end method

.method public a(Lcom/facebook/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ab;->f:Lcom/facebook/bf;

    return-void
.end method

.method public a(Lcom/facebook/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/bi;

    return-void
.end method

.method public a(Lcom/facebook/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ab;->e:Lcom/facebook/bj;

    return-void
.end method

.method public a(Lcom/facebook/widget/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ab;->d:Lcom/facebook/widget/ad;

    return-void
.end method

.method public a(Ljava/util/List;Lcom/facebook/aw;)V
    .registers 5

    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    iget-object v1, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    invoke-virtual {v0, v1}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    sget-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/ab;->a(Ljava/util/List;Lcom/facebook/b/l;Lcom/facebook/aw;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    sget-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    iput-object v0, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    :cond_20
    return-void
.end method

.method public b()Lcom/facebook/bi;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/bi;

    return-object v0
.end method

.method public b(Ljava/util/List;Lcom/facebook/aw;)V
    .registers 5

    sget-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    iget-object v1, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    invoke-virtual {v0, v1}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/ab;->a(Ljava/util/List;Lcom/facebook/b/l;Lcom/facebook/aw;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object p1, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    iput-object v0, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    :cond_20
    return-void
.end method

.method c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/ab;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/widget/ab;->c:Lcom/facebook/b/l;

    return-void
.end method

.method public e()Lcom/facebook/bj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->e:Lcom/facebook/bj;

    return-object v0
.end method

.method public f()Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ab;->f:Lcom/facebook/bf;

    return-object v0
.end method
