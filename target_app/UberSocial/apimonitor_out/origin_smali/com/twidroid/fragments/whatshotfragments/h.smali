.class Lcom/twidroid/fragments/whatshotfragments/h;
.super Lcom/twidroid/fragments/whatshotfragments/g;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/g;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v0, 0x1

    :try_start_4
    aget-object v0, p1, v0

    invoke-virtual {p0, v2, v0}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->d(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_25

    move-object v0, v1

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/h;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/g;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->c(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    if-nez p2, :cond_b

    const-string v0, "Some error occured while following!"

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-object v1, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    if-nez v1, :cond_30

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

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_30
    const v1, 0x7f0c0166

    invoke-static {p1, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_55

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

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/h;->a(Ljava/lang/String;)V

    :cond_55
    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->f()V

    goto :goto_a
.end method
