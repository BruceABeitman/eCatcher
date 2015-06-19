.class Lcom/twidroid/fragments/i;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "user"


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
    iget-object v0, p0, Lcom/twidroid/fragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->m(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p0, v1, v0}, Lcom/twidroid/fragments/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/f;

    invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/i;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/f;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/i;->a(Lcom/twidroid/fragments/f;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/f;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/i;->a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->l(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    if-nez p2, :cond_b

    const-string v0, "Some error occured while following!"

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/i;->a(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "is_blocked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Z)Z

    const-string v0, "is_following"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;I)I

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->p()V

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-object v1, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    if-nez v1, :cond_46

    const v1, 0x7f0c02da

    invoke-static {p1, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/i;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_46
    const v1, 0x7f0c0166

    invoke-static {p1, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/i;->a(Ljava/lang/String;)V

    :cond_6b
    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->n()V

    goto :goto_a
.end method
