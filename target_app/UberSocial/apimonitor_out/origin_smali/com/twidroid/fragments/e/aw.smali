.class Lcom/twidroid/fragments/e/aw;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/av;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/e/av;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/av$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/aw;-><init>(Lcom/twidroid/fragments/e/av;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/e/ax;)Lcom/twidroid/fragments/e/ay;
    .registers 13

    const v1, 0x7f0c0028

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->c(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->c(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    const-string v3, "youtube filter:links"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget-boolean v5, v5, Lcom/twidroid/fragments/e/ax;->a:Z

    if-eqz v5, :cond_7b

    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget-wide v5, v5, Lcom/twidroid/fragments/e/ax;->c:J

    const-wide/16 v8, 0x1

    sub-long/2addr v5, v8

    :goto_35
    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-boolean v8, v8, Lcom/twidroid/fragments/e/ax;->a:Z

    invoke-virtual {v0, v3, v5, v6, v8}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;JZ)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    new-instance v3, Lcom/twidroid/fragments/e/ay;

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    const/4 v8, 0x0

    invoke-direct {v3, v6, v8}, Lcom/twidroid/fragments/e/ay;-><init>(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/av$1;)V

    invoke-static {v0, v3}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/ay;)Lcom/twidroid/fragments/e/ay;

    if-eqz v7, :cond_94

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_94

    move v3, v4

    :goto_54
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_84

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;Lcom/twidroid/ui/StringUrlSpan;)Z

    move-result v6

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v6}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v6

    iget-object v6, v6, Lcom/twidroid/fragments/e/ay;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_54

    :cond_7b
    const/4 v5, 0x0

    aget-object v5, p1, v5

    iget-wide v5, v5, Lcom/twidroid/fragments/e/ax;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    goto :goto_35

    :cond_84
    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_94

    :cond_94
    if-eqz v5, :cond_ed

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ed

    move v3, v4

    :goto_9d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;Lcom/twidroid/ui/StringUrlSpan;)Z

    move-result v6

    if-eqz v6, :cond_c0

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v6}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v6

    iget-object v6, v6, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9d

    :cond_c4
    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v3}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;

    move-result-object v3

    iget-object v3, v3, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_ed
    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;
    :try_end_f2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_f2} :catch_f4
    .catch Lcom/ubermedia/net/a/a/a; {:try_start_6 .. :try_end_f2} :catch_110
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f2} :catch_13d

    move-result-object v0

    :goto_f3
    return-object v0

    :catch_f4
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    new-instance v3, Lcom/ubermedia/net/a/a/a;

    const-string v5, "Out Of Memory Error"

    invoke-direct {v3, v5, v4}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v4}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const-string v1, "VideoStreamFragment"

    const-string v3, "Error getting tweets for video stream"

    invoke-static {v1, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_f3

    :catch_110
    move-exception v0

    move-object v3, v0

    iget-object v4, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    new-instance v5, Lcom/ubermedia/net/a/a/a;

    iget-object v6, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v3}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_13b

    const v0, 0x7f0c02b9

    :goto_122
    invoke-static {v6, v0}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v10}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const-string v0, "VideoStreamFragment"

    const-string v1, "Error getting tweets for video stream"

    invoke-static {v0, v1, v3}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_f3

    :cond_13b
    move v0, v1

    goto :goto_122

    :catch_13d
    move-exception v0

    iget-object v3, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    new-instance v4, Lcom/ubermedia/net/a/a/a;

    iget-object v5, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v5, v1}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v10}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    const-string v1, "VideoStreamFragment"

    const-string v3, "Error getting tweets for video stream"

    invoke-static {v1, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_f3
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/e/ax;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/aw;->a([Lcom/twidroid/fragments/e/ax;)Lcom/twidroid/fragments/e/ay;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->b(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/a/ax;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->b(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/a/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->getCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/av;->N()V

    :cond_1c
    return-void
.end method

.method protected a(Lcom/twidroid/fragments/e/ay;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/av;->M()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-static {v0}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->f()V

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/twidroid/fragments/e/aw;->a:Lcom/twidroid/fragments/e/av;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/av;->b()V

    :cond_18
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/e/ay;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/aw;->a(Lcom/twidroid/fragments/e/ay;)V

    return-void
.end method
