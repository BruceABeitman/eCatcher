.class final Lcom/instagram/android/l/c/o;
.super Lcom/instagram/api/j/f;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/android/l/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/l/b/e;)V
    .registers 6

    invoke-virtual {p1}, Lcom/instagram/android/l/b/e;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/l/b/e;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/l/c/v;->a(J)V

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->g(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/a/a;->c(Ljava/util/List;)V

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->k(Lcom/instagram/android/l/c/a;)V

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->l(Lcom/instagram/android/l/c/a;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->m(Lcom/instagram/android/l/c/a;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->n(Lcom/instagram/android/l/c/a;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/c/a;->a(Ljava/util/List;)V

    goto :goto_32
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/c/v;->a(Z)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->g(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->o(Lcom/instagram/android/l/c/a;)V

    :cond_22
    return-void
.end method

.method public final a(Lcom/instagram/api/j/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/l/c/v;->b(Z)V

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/c/v;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->g(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->notifyDataSetChanged()V

    :cond_1f
    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->h(Lcom/instagram/android/l/c/a;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-virtual {v1}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->try_again:I

    new-instance v2, Lcom/instagram/android/l/c/q;

    invoke-direct {v2, p0}, Lcom/instagram/android/l/c/q;-><init>(Lcom/instagram/android/l/c/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->skip:I

    new-instance v2, Lcom/instagram/android/l/c/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/l/c/p;-><init>(Lcom/instagram/android/l/c/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_59
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/l/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/l/c/o;->a(Lcom/instagram/android/l/b/e;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/c/v;->a(Z)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->g(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->o(Lcom/instagram/android/l/c/a;)V

    :cond_22
    return-void
.end method
