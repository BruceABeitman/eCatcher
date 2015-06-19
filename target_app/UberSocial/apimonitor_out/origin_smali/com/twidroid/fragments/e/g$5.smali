.class Lcom/twidroid/fragments/e/g$5;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/g;->a(Lcom/ubermedia/model/a;Lcom/twidroid/model/TimelineGap;)V
.end annotation


# instance fields
.field final synthetic b:Lcom/ubermedia/model/a;

.field final synthetic c:Lcom/twidroid/model/TimelineGap;

.field final synthetic d:Lcom/twidroid/fragments/e/g;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;Lcom/ubermedia/model/a;Lcom/twidroid/model/TimelineGap;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    iput-object p3, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    iput-object p4, p0, Lcom/twidroid/fragments/e/g$5;->c:Lcom/twidroid/model/TimelineGap;

    invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$5;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v0}, Lcom/twidroid/fragments/e/g;->H(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v0}, Lcom/twidroid/fragments/e/g;->J(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v1}, Lcom/twidroid/fragments/e/g;->I(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_1f
    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v0}, Lcom/twidroid/fragments/e/g;->M(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v1}, Lcom/twidroid/fragments/e/g;->K(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    iget-object v3, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v3}, Lcom/ubermedia/model/a;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v5}, Lcom/twidroid/fragments/e/g;->L(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twidroid/d/v;->D()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;IJZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v1}, Lcom/twidroid/fragments/e/g;->N(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->cb()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    iget-object v2, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_5f
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/e/g;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g$5;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/g;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->M()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/e/g;->i(Lcom/twidroid/fragments/e/g;Z)Z

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
    .registers 15

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    if-eqz p2, :cond_117

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fd

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v3, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v5, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->w:J

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;

    move-result-object v8

    iget-object v2, p0, Lcom/twidroid/fragments/e/g$5;->c:Lcom/twidroid/model/TimelineGap;

    invoke-interface {v8, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v7, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v7}, Lcom/twidroid/fragments/e/g;->P(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;

    move-result-object v7

    iget-object v9, p0, Lcom/twidroid/fragments/e/g$5;->c:Lcom/twidroid/model/TimelineGap;

    invoke-virtual {v9}, Lcom/twidroid/model/TimelineGap;->c()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v10}, Lcom/twidroid/fragments/e/g;->O(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v7, v9, v10, v11}, Lcom/twidroid/b/a/b;->d(Ljava/lang/String;J)V

    const/4 v7, -0x1

    if-eq v2, v7, :cond_64

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_64

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_64
    iget-object v7, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v7}, Lcom/ubermedia/model/a;->d()J

    move-result-wide v9

    cmp-long v7, v0, v9

    if-gtz v7, :cond_b9

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v0}, Lcom/twidroid/fragments/e/g;->R(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/twidroid/fragments/e/g;->a(JJ)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v3}, Lcom/twidroid/fragments/e/g;->Q(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/twidroid/b/a/b;->d(Ljava/lang/String;J)V

    const/4 v0, -0x1

    if-eq v2, v0, :cond_94

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_94

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_94
    const/4 v0, 0x0

    move v1, v0

    :goto_96
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_fd

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v0}, Lcom/ubermedia/model/a;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b5

    const/4 v0, 0x0

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_b5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_96

    :cond_b9
    iget-object v2, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    iget-object v7, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/twidroid/fragments/e/g;->a(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/ubermedia/model/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v2, v0, v1}, Lcom/ubermedia/model/a;->c(J)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v0, v5, v6}, Lcom/ubermedia/model/a;->a(J)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v0}, Lcom/twidroid/fragments/e/g;->S(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Lcom/ubermedia/model/a;)V

    new-instance v0, Lcom/twidroid/model/TimelineGap;

    const-wide/16 v1, -0x1

    iget-object v7, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/twidroid/fragments/e/g;->a(JJ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/fragments/e/g$5;->b:Lcom/ubermedia/model/a;

    invoke-virtual {v4}, Lcom/ubermedia/model/a;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-static {v6}, Lcom/twidroid/fragments/e/g;->T(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v6

    int-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/model/TimelineGap;-><init>(JLjava/lang/String;JJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fd
    invoke-virtual {p1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V

    invoke-virtual {p1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    :cond_10d
    :goto_10d
    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5;->d:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void

    :cond_117
    if-nez p2, :cond_10d

    new-instance v0, Lcom/twidroid/fragments/e/g$5$1;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/fragments/e/g$5$1;-><init>(Lcom/twidroid/fragments/e/g$5;Lcom/twidroid/fragments/e/g;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_10d
.end method

.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/e/g;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$5;->a(Lcom/twidroid/fragments/e/g;)V

    return-void
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
