.class abstract Lcom/twidroid/fragments/whatshotfragments/g;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# static fields
.field protected static final b:Ljava/lang/String; = "is_blocked"

.field protected static final c:Ljava/lang/String; = "is_following"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "is_blocked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/twidroid/d/g;->a(JLcom/twidroid/net/a/c/c;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "is_following"

    invoke-virtual {v1, v2, p1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_40
    return-object v0

    :cond_41
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_40
.end method

.method protected a(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_27
    if-nez v0, :cond_2c

    const-string v0, ""

    :goto_2b
    return-object v0

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_31
    move-object v0, v1

    goto :goto_27
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
