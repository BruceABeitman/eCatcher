.class Lcom/twidroid/fragments/whatshotfragments/i;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/i;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->h(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const-string v1, "staff-picks"

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->i(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_61

    move v4, v3

    :goto_3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_61

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubermedia/model/twitter/a;

    invoke-virtual {v1}, Lcom/ubermedia/model/twitter/a;->d()Lcom/ubermedia/model/twitter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubermedia/model/twitter/b;->a()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x1

    :goto_59
    iput v1, v0, Lcom/twidroid/model/twitter/User;->j:I

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3c

    :cond_5f
    move v1, v3

    goto :goto_59

    :cond_61
    if-nez v2, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_6c

    :goto_69
    return-object v0

    :cond_6a
    move-object v0, v2

    goto :goto_69

    :catch_6c
    move-exception v0

    move-object v2, v0

    const-string v0, "SuggestedUsers EXCEPTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_69
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/i;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/i;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Ljava/util/List;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    new-instance v0, Lcom/twidroid/ui/a/ag;

    invoke-direct {v0, p1, p2}, Lcom/twidroid/ui/a/ag;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_b
.end method
