.class Lcom/twidroid/fragments/h;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/g;-><init>(Lcom/twidroid/fragments/f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_3
    iget-object v0, p0, Lcom/twidroid/fragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->i(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/twidroid/net/a/c/c;->d(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/d/g;->a()V

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p0, v1, v0}, Lcom/twidroid/fragments/h;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v2, v0

    iget-object v0, p0, Lcom/twidroid/fragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/f;

    invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/h;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/f;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/h;->a(Lcom/twidroid/fragments/f;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/f;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/h;->a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->h(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->e(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->M()V

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p2, :cond_52

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0c017a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v3

    iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const v4, 0x7f0c017b

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/h;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->j(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-static {p1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v1

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Z)Z

    const-string v0, "is_following"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;I)I

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->n()V

    :goto_51
    return-void

    :cond_52
    const-string v0, "Some error occured while blocking!"

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/h;->a(Ljava/lang/String;)V

    goto :goto_51
.end method
