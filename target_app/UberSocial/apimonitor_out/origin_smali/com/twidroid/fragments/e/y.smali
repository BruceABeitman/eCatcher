.class Lcom/twidroid/fragments/e/y;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# instance fields
.field private final b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/e/x;Landroid/widget/ListAdapter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    iput-object p2, p0, Lcom/twidroid/fragments/e/y;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method private c(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/twidroid/fragments/e/x$2;->a:[I

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->a(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/fragments/e/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/aa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->d(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;

    move-result-object v1

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->i(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_20
    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v3, :cond_33

    invoke-virtual {v2}, Lcom/twidroid/ui/a/z;->g()V

    :cond_33
    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/a/z;->d(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_42

    if-eq v0, v2, :cond_45

    :cond_42
    invoke-virtual {p1, v2}, Lcom/twidroid/fragments/e/x;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_45
    invoke-static {v2}, Lcom/twidroid/fragments/e/y;->a(Landroid/widget/ListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_76

    const v0, 0x7f0c0203

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/x;->b(I)V

    :cond_51
    :goto_51
    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void

    :pswitch_59
    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->b(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;

    move-result-object v1

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->g(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_20

    :pswitch_64
    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->c(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;

    move-result-object v1

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->h(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {p1}, Lcom/twidroid/fragments/e/x;->h(Lcom/twidroid/fragments/e/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_20

    :cond_76
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_51

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/e/z;)Lcom/ubermedia/a/g;
    .registers 10

    const/4 v0, 0x0

    aget-object v6, p1, v0

    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/e/x;

    invoke-static {v0}, Lcom/twidroid/fragments/e/x;->e(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, v6, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    sget-object v1, Lcom/twidroid/fragments/e/x$2;->a:[I

    iget-object v2, v6, Lcom/twidroid/fragments/e/z;->d:Lcom/twidroid/fragments/e/aa;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/aa;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a0

    :cond_2a
    :goto_2a
    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v7}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V

    :goto_2f
    return-object v0

    :pswitch_30
    iget-object v1, v6, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    iget-wide v2, v6, Lcom/twidroid/fragments/e/z;->a:J

    iget-wide v4, v6, Lcom/twidroid/fragments/e/z;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3e

    goto :goto_2a

    :catch_3e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/twidroid/fragments/e/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/e/x;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/x;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const-string v0, "RetweetsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retweet loading more failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/ubermedia/a/g;

    invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2f

    :pswitch_78
    :try_start_78
    iget-object v0, p0, Lcom/twidroid/fragments/e/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/e/x;

    invoke-static {v0}, Lcom/twidroid/fragments/e/x;->f(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, v6, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(Lcom/twidroid/model/twitter/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    :pswitch_8e
    iget-object v1, v6, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    if-eqz v1, :cond_2a

    iget-wide v1, v6, Lcom/twidroid/fragments/e/z;->a:J

    invoke-virtual {v6}, Lcom/twidroid/fragments/e/z;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_9f} :catch_3e

    goto :goto_2a

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_78
        :pswitch_8e
    .end packed-switch
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/e/z;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/y;->a([Lcom/twidroid/fragments/e/z;)Lcom/ubermedia/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/x;

    check-cast p2, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/y;->a(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/x;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/x;->c(Z)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    invoke-direct {p0, p1, p2}, Lcom/twidroid/fragments/e/y;->c(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V

    invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1d
    const v0, 0x7f0c0203

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/x;->b(I)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->P()V

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/x;->c(Z)V

    return-void
.end method

.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/e/x;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/y;->a(Lcom/twidroid/fragments/e/x;)V

    return-void
.end method

.method protected bridge synthetic b(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/x;

    check-cast p2, Lcom/ubermedia/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/y;->b(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V

    return-void
.end method

.method protected b(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/x;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    invoke-direct {p0, p1, p2}, Lcom/twidroid/fragments/e/y;->c(Lcom/twidroid/fragments/e/x;Lcom/ubermedia/a/g;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/e/x;->c(Z)V

    return-void
.end method

.method protected c()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/fragments/e/y;->b:Landroid/widget/ListAdapter;

    invoke-static {v0}, Lcom/twidroid/fragments/e/y;->a(Landroid/widget/ListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
