.class Lcom/twidroid/fragments/e/r$2;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/r;->Z()V
.end annotation


# instance fields
.field final synthetic b:Lcom/twidroid/fragments/e/r;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/r;Lcom/twidroid/fragments/e/r;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r$2;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0}, Lcom/twidroid/fragments/e/r;->l(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0}, Lcom/twidroid/fragments/e/r;->m(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0}, Lcom/twidroid/fragments/e/r;->o(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v1}, Lcom/twidroid/fragments/e/r;->n(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :goto_2b
    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0}, Lcom/twidroid/fragments/e/r;->s(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    sget v1, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    iget-object v2, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/r;->E()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v4}, Lcom/twidroid/fragments/e/r;->r(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->D()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/b/a/b;->a(IJZ)Ljava/util/List;

    move-result-object v0

    :goto_4b
    return-object v0

    :cond_4c
    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0}, Lcom/twidroid/fragments/e/r;->q(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v1}, Lcom/twidroid/fragments/e/r;->p(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_2b

    :catch_6c
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    iget-object v2, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_4b
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/r;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/r$2;->a(Lcom/twidroid/fragments/e/r;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/r;Ljava/util/List;)V
    .registers 6

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-static {v0, v2}, Lcom/twidroid/fragments/e/r;->b(Lcom/twidroid/fragments/e/r;Z)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/r;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/r;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/r$2;->b:Lcom/twidroid/fragments/e/r;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->M()V

    return-void
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
