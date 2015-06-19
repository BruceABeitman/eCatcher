.class final Lcom/instagram/android/directshare/c/d;
.super Lcom/instagram/api/k/a/h;
.source "InboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Lcom/instagram/f/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/f/a/b/a;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/m;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->b(Lcom/instagram/android/directshare/c/c;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->a()V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->d(Lcom/instagram/android/directshare/c/c;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->e(Lcom/instagram/android/directshare/c/c;)Z

    :cond_33
    invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->a(I)V

    :cond_4a
    invoke-static {}, Lcom/instagram/android/directshare/f/a;->a()Lcom/instagram/android/directshare/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/f/a;->b()V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->f(Lcom/instagram/android/directshare/c/c;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->g(Lcom/instagram/android/directshare/c/c;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->h(Lcom/instagram/android/directshare/c/c;)Z

    :cond_63
    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->i(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/c/c;->i(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/m;->a()V

    :cond_84
    return-void
.end method

.method private b(Lcom/instagram/api/k/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/f/a/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/m;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    :cond_1d
    return-void
.end method

.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Lcom/instagram/f/a/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/m;->a(Z)V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/android/directshare/c/d;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2e
    invoke-static {}, Lcom/instagram/android/directshare/a/a;->a()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/f/a/b/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/d;->a(Lcom/instagram/f/a/b/a;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/api/k/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/d;->b(Lcom/instagram/api/k/a/i;)V

    return-void
.end method
