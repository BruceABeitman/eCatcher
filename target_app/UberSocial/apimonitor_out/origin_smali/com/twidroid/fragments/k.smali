.class Lcom/twidroid/fragments/k;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/g;-><init>(Lcom/twidroid/fragments/f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/l;)Lcom/ubermedia/a/g;
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->s(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Lcom/twidroid/fragments/l;->a:I

    int-to-long v1, v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-wide v3, v3, Lcom/twidroid/fragments/l;->b:J

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(JJZ)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/f;

    invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const-string v0, "SingleTweetFragment"

    const-string v1, "Loading more retweets failed"

    invoke-static {v0, v1, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/l;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/k;->a([Lcom/twidroid/fragments/l;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/f;

    check-cast p2, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/k;->a(Lcom/twidroid/fragments/f;Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/f;Lcom/ubermedia/a/g;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/aa;

    iget-object v1, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/aa;->a(Ljava/util/List;)V

    iget-object v1, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    :goto_28
    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/aa;->a(Z)V

    invoke-virtual {v0}, Lcom/twidroid/ui/a/aa;->notifyDataSetChanged()V

    invoke-static {p1}, Lcom/twidroid/fragments/f;->t(Lcom/twidroid/fragments/f;)I

    :cond_31
    return-void

    :cond_32
    const/4 v1, 0x0

    goto :goto_28
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
