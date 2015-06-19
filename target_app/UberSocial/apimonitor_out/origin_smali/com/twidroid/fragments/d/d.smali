.class Lcom/twidroid/fragments/d/d;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/d/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/d;->c([Ljava/lang/Object;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/d/c;

    check-cast p2, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/d/d;->a(Lcom/twidroid/fragments/d/c;Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/d/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/d/c;Lcom/ubermedia/a/g;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    if-nez p2, :cond_19

    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->P()V

    const v0, 0x7f0c02ae

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/d/c;->b(I)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->R()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {p1}, Lcom/twidroid/fragments/d/c;->b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->g()V

    invoke-static {p1}, Lcom/twidroid/fragments/d/c;->b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;

    move-result-object v1

    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V

    iget v0, p1, Lcom/twidroid/fragments/d/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/twidroid/fragments/d/c;->e:I

    invoke-static {p1}, Lcom/twidroid/fragments/d/c;->b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->P()V

    goto :goto_18

    :cond_4c
    invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->P()V

    goto :goto_18
.end method

.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/d/c;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/d;->a(Lcom/twidroid/fragments/d/c;)V

    return-void
.end method

.method protected varargs c([Ljava/lang/Object;)Lcom/ubermedia/a/g;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_2a

    new-instance v2, Ljava/lang/Exception;

    const-string v0, "Loading user favorites failed."

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/d/c;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    :goto_29
    return-object v0

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_start_37
    sget-object v0, Lcom/twidroid/fragments/d/c;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading favorites page  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/d/c;

    invoke-static {v0}, Lcom/twidroid/fragments/d/c;->c(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
    :try_end_69
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_37 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_69} :catch_92

    goto :goto_29

    :catch_6a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_c4

    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/d/c;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_29

    :pswitch_90
    move-object v0, v1

    goto :goto_29

    :catch_92
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Connection failed. Please try again."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    move-object v0, v1

    goto :goto_29

    :cond_a5
    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/d/c;

    invoke-virtual {v1}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_29

    nop

    :pswitch_data_c4
    .packed-switch 0x3
        :pswitch_90
    .end packed-switch
.end method

.method protected c()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/d/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/d/c;

    invoke-virtual {v0}, Lcom/twidroid/fragments/d/c;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/fragments/d/d;->a(Landroid/widget/ListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
