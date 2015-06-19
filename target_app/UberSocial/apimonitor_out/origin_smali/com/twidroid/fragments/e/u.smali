.class Lcom/twidroid/fragments/e/u;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/e/t;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    const-string v0, "NearbyFragment"

    const-string v1, "NearbyTweersAsyncTask::loadmore constructor"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/e/v;)Lcom/ubermedia/a/g;
    .registers 13

    :try_start_0
    const-string v0, "NearbyFragment"

    const-string v1, "NearbyTweersAsyncTask::loadmore started"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v10, p1, v0

    iget-object v0, p0, Lcom/twidroid/fragments/e/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/e/t;

    invoke-static {v0}, Lcom/twidroid/fragments/e/t;->c(Lcom/twidroid/fragments/e/t;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, v10, Lcom/twidroid/fragments/e/v;->a:Ljava/lang/String;

    iget-wide v2, v10, Lcom/twidroid/fragments/e/v;->b:D

    iget-wide v4, v10, Lcom/twidroid/fragments/e/v;->c:D

    iget v6, v10, Lcom/twidroid/fragments/e/v;->d:I

    iget-wide v7, v10, Lcom/twidroid/fragments/e/v;->e:J

    iget-boolean v9, v10, Lcom/twidroid/fragments/e/v;->f:Z

    invoke-virtual/range {v0 .. v9}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;DDIJZ)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/ubermedia/a/g;

    iget-boolean v2, v10, Lcom/twidroid/fragments/e/v;->f:Z

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    :goto_31
    return-object v0

    :catch_32
    move-exception v0

    move-object v1, v0

    const-string v0, "NearbyFragment"

    const-string v2, "NearbyTweersAsyncTask"

    invoke-static {v0, v2, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/e/v;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/u;->a([Lcom/twidroid/fragments/e/v;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/e/t;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/u;->a(Lcom/twidroid/fragments/e/t;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/t;

    check-cast p2, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/u;->a(Lcom/twidroid/fragments/e/t;Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/t;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->Q()V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/t;Lcom/ubermedia/a/g;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    const-string v0, "NearbyFragment"

    const-string v1, "NearbyTweersAsyncTask::onSafePostExecute"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->isDetached()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->i()Lcom/twidroid/ui/a/am;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_5b

    if-eqz v1, :cond_39

    :try_start_29
    invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->getCount()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V

    :goto_36
    invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-boolean v0, p2, Lcom/ubermedia/a/g;->c:Z

    if-eqz v0, :cond_53

    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->b(Ljava/util/List;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_45} :catch_46

    goto :goto_36

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v1, "NearbyFragment"

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_53
    :try_start_53
    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_46

    goto :goto_36

    :cond_5b
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->P()V

    goto :goto_39
.end method

.method protected bridge synthetic b(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/e/t;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/u;->b(Lcom/twidroid/fragments/e/t;)V

    return-void
.end method

.method protected b(Lcom/twidroid/fragments/e/t;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/t;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void
.end method

.method protected c()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/e/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/e/t;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/fragments/e/u;->a(Landroid/widget/ListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
