.class abstract Lcom/facebook/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final b:I = 0x7d0


# instance fields
.field protected c:Lcom/facebook/widget/m;

.field protected d:Lcom/facebook/widget/e;

.field final synthetic e:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/f;)V

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/n;)V

    iput-object v1, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    iput-object v1, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    return-void
.end method

.method public a(Lcom/facebook/ai;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/m;->a(Lcom/facebook/ai;Z)V

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/m;Lcom/facebook/ai;)V

    :cond_f
    return-void
.end method

.method public a(Lcom/facebook/widget/e;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/widget/ah$1;

    invoke-direct {v3, p0}, Lcom/facebook/widget/ah$1;-><init>(Lcom/facebook/widget/ah;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/m;

    iput-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    new-instance v1, Lcom/facebook/widget/ah$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ah$2;-><init>(Lcom/facebook/widget/ah;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/m;->a(Lcom/facebook/widget/n;)V

    iput-object p1, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    iget-object v0, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    iget-object v1, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    invoke-virtual {v1}, Lcom/facebook/widget/m;->b()Lcom/facebook/widget/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/l;)Z

    return-void
.end method

.method protected a(Lcom/facebook/widget/m;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/l;)Z

    return-void
.end method

.method protected a(Lcom/facebook/widget/m;Lcom/facebook/ai;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->v()V

    return-void
.end method

.method protected a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-virtual {v0, p2}, Lcom/facebook/widget/af;->a(Lcom/facebook/widget/au;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    invoke-virtual {v0}, Lcom/facebook/widget/m;->c()V

    :cond_9
    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ah;->d:Lcom/facebook/widget/e;

    invoke-virtual {v0}, Lcom/facebook/widget/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    invoke-virtual {v0}, Lcom/facebook/widget/m;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected d()Lcom/facebook/widget/m;
    .registers 4

    new-instance v0, Lcom/facebook/widget/m;

    iget-object v1, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-virtual {v1}, Lcom/facebook/widget/af;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-static {v2}, Lcom/facebook/widget/af;->e(Lcom/facebook/widget/af;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/m;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
