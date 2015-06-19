.class Lcom/facebook/widget/m;
.super Landroid/support/v4/content/Loader;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;

.field private b:Z

.field private c:Lcom/facebook/ai;

.field private d:Lcom/facebook/ai;

.field private e:Lcom/facebook/ai;

.field private f:Lcom/facebook/widget/n;

.field private g:Lcom/facebook/widget/au;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/facebook/widget/m;->h:Z

    iput-boolean v0, p0, Lcom/facebook/widget/m;->i:Z

    iput-object p2, p0, Lcom/facebook/widget/m;->a:Ljava/lang/Class;

    return-void
.end method

.method private a(Lcom/facebook/ai;ZJ)V
    .registers 9

    iput-boolean p2, p0, Lcom/facebook/widget/m;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/m;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    iput-object p1, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    iget-object v0, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    new-instance v1, Lcom/facebook/widget/m$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/m$2;-><init>(Lcom/facebook/widget/m;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/m;->i:Z

    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/m;->b(Lcom/facebook/ai;Z)Lcom/facebook/b/a;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/m$3;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/m$3;-><init>(Lcom/facebook/widget/m;Lcom/facebook/aq;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-nez v0, :cond_2a

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_29
    return-void

    :cond_2a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29
.end method

.method private a(Lcom/facebook/as;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/as;->e()Lcom/facebook/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    if-eq v0, v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/m;->i:Z

    iput-object v1, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    invoke-virtual {p1}, Lcom/facebook/as;->a()Lcom/facebook/w;

    move-result-object v0

    if-nez v0, :cond_33

    move-object v0, v1

    :goto_16
    invoke-virtual {p1}, Lcom/facebook/as;->b()Lcom/facebook/c/c;

    move-result-object v2

    if-nez v2, :cond_25

    if-nez v0, :cond_25

    new-instance v0, Lcom/facebook/t;

    const-string v2, "GraphObjectPagingLoader received neither a result nor an error."

    invoke-direct {v0, v2}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    :cond_25
    if-eqz v0, :cond_38

    iput-object v1, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    iget-object v1, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/n;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/n;

    invoke-interface {v1, v0, p0}, Lcom/facebook/widget/n;->a(Lcom/facebook/t;Lcom/facebook/widget/m;)V

    goto :goto_9

    :cond_33
    invoke-virtual {v0}, Lcom/facebook/w;->m()Lcom/facebook/t;

    move-result-object v0

    goto :goto_16

    :cond_38
    invoke-direct {p0, p1}, Lcom/facebook/widget/m;->b(Lcom/facebook/as;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/facebook/widget/m;Lcom/facebook/as;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/m;->a(Lcom/facebook/as;)V

    return-void
.end method

.method private b(Lcom/facebook/ai;Z)Lcom/facebook/b/a;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/b/a;

    new-array v3, v0, [Lcom/facebook/ai;

    aput-object p1, v3, v1

    invoke-direct {v2, v3}, Lcom/facebook/b/a;-><init>([Lcom/facebook/ai;)V

    if-nez p2, :cond_11

    :goto_d
    invoke-virtual {v2, v0}, Lcom/facebook/b/a;->a(Z)V

    return-object v2

    :cond_11
    move v0, v1

    goto :goto_d
.end method

.method private b(Lcom/facebook/as;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/widget/m;->h:Z

    if-nez v0, :cond_50

    :cond_a
    new-instance v0, Lcom/facebook/widget/au;

    invoke-direct {v0}, Lcom/facebook/widget/au;-><init>()V

    move-object v1, v0

    :goto_10
    const-class v0, Lcom/facebook/widget/o;

    invoke-virtual {p1, v0}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/o;

    invoke-virtual {p1}, Lcom/facebook/as;->f()Z

    move-result v4

    invoke-interface {v0}, Lcom/facebook/widget/o;->a()Lcom/facebook/c/h;

    move-result-object v0

    iget-object v5, p0, Lcom/facebook/widget/m;->a:Ljava/lang/Class;

    invoke-interface {v0, v5}, Lcom/facebook/c/h;->a(Ljava/lang/Class;)Lcom/facebook/c/h;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/c/h;->size()I

    move-result v0

    if-lez v0, :cond_59

    move v0, v2

    :goto_2d
    if-eqz v0, :cond_3d

    sget-object v6, Lcom/facebook/au;->a:Lcom/facebook/au;

    invoke-virtual {p1, v6}, Lcom/facebook/as;->a(Lcom/facebook/au;)Lcom/facebook/ai;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    invoke-virtual {v1, v5, v4}, Lcom/facebook/widget/au;->a(Ljava/util/Collection;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/widget/au;->b(Z)V

    :cond_3d
    if-nez v0, :cond_48

    invoke-virtual {v1, v3}, Lcom/facebook/widget/au;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/facebook/widget/au;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    :cond_48
    if-nez v4, :cond_4c

    iput-boolean v3, p0, Lcom/facebook/widget/m;->b:Z

    :cond_4c
    invoke-virtual {p0, v1}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/au;)V

    return-void

    :cond_50
    new-instance v0, Lcom/facebook/widget/au;

    iget-object v1, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    invoke-direct {v0, v1}, Lcom/facebook/widget/au;-><init>(Lcom/facebook/widget/au;)V

    move-object v1, v0

    goto :goto_10

    :cond_59
    move v0, v3

    goto :goto_2d
.end method


# virtual methods
.method public a()Lcom/facebook/widget/n;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/n;

    return-object v0
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/m;->c:Lcom/facebook/ai;

    if-nez v0, :cond_c

    new-instance v0, Lcom/facebook/t;

    const-string v1, "refreshOriginalRequest may not be called until after startLoading has been called."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/facebook/widget/m;->c:Lcom/facebook/ai;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/widget/m;->a(Lcom/facebook/ai;ZJ)V

    return-void
.end method

.method public a(Lcom/facebook/ai;Z)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/widget/m;->c:Lcom/facebook/ai;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/m;->a(Lcom/facebook/ai;ZJ)V

    return-void
.end method

.method public a(Lcom/facebook/widget/au;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    iput-object p1, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    invoke-virtual {p0}, Lcom/facebook/widget/m;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    if-eqz v0, :cond_1a

    if-eq v0, p1, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/widget/au;->o()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/widget/au;->n()V

    :cond_1a
    return-void
.end method

.method public a(Lcom/facebook/widget/n;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/n;

    return-void
.end method

.method public b()Lcom/facebook/widget/au;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    return-object v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    iput-object v0, p0, Lcom/facebook/widget/m;->c:Lcom/facebook/ai;

    iput-object v0, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/au;)V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/m;->i:Z

    return v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/widget/au;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/au;)V

    return-void
.end method

.method public e()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    if-eqz v0, :cond_22

    iput-boolean v2, p0, Lcom/facebook/widget/m;->h:Z

    iget-object v0, p0, Lcom/facebook/widget/m;->e:Lcom/facebook/ai;

    iput-object v0, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    iget-object v0, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    new-instance v1, Lcom/facebook/widget/m$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/m$1;-><init>(Lcom/facebook/widget/m;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aj;)V

    iput-boolean v2, p0, Lcom/facebook/widget/m;->i:Z

    iget-object v0, p0, Lcom/facebook/widget/m;->d:Lcom/facebook/ai;

    iget-boolean v1, p0, Lcom/facebook/widget/m;->b:Z

    invoke-direct {p0, v0, v1}, Lcom/facebook/widget/m;->b(Lcom/facebook/ai;Z)Lcom/facebook/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ai;->c(Lcom/facebook/aq;)Lcom/facebook/ap;

    :cond_22
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    iget-object v0, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/m;->g:Lcom/facebook/widget/au;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/au;)V

    :cond_c
    return-void
.end method
