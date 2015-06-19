.class final Lcom/bbm/ui/c/ap;
.super Lcom/bbm/ui/gk;
.source "ChannelsNotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/d/ei;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/c/am;

.field private final g:Landroid/support/v4/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/j/r",
            "<",
            "Lcom/bbm/d/fd;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/am;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    new-instance v0, Landroid/support/v4/b/g;

    invoke-direct {v0}, Landroid/support/v4/b/g;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    return-void
.end method

.method private a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/ec;",
            ")",
            "Lcom/bbm/j/r",
            "<",
            "Lcom/bbm/d/fd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    iget-object v1, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0, p1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    iget-object v2, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method private a(Lcom/bbm/ui/c/as;Lcom/bbm/d/eo;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p1, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/SquaredObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v2, p2, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v0, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_45

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    iget-object v1, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    :goto_3d
    if-eqz v0, :cond_6d

    iget-object v1, p1, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    invoke-virtual {v0, p3}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_3d

    iget-object v2, p2, Lcom/bbm/d/eo;->b:Ljava/util/List;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3d

    invoke-static {v2, v1}, Lcom/bbm/util/m;->a(Ljava/util/List;I)Lcom/bbm/util/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/m;->a(Landroid/content/Context;)Lcom/bbm/j/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->g:Landroid/support/v4/b/g;

    invoke-virtual {v1, p3, v0}, Landroid/support/v4/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_6d
    iget-object v0, p1, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_44
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030084

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/c/as;

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-direct {v2, v0, v3}, Lcom/bbm/ui/c/as;-><init>(Lcom/bbm/ui/c/am;B)V

    const v0, 0x7f0a0377

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v0, v2, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/SquaredObservingImageView;->setLimitedLengthAnimation(Z)V

    const v0, 0x7f0a0378

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/c/as;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0379

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/c/as;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a00a1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/ei;

    iget-object v0, p1, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 10

    check-cast p2, Ljava/lang/Long;

    check-cast p1, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e054e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {p1, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    const v3, 0x10014

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->setRightLabel(Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e054f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_5c
    iget-object v0, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e054d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 16

    const-wide/16 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    check-cast p2, Lcom/bbm/d/ei;

    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/c/as;

    :try_start_10
    iget-object v1, p2, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v3, "channelUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_3d

    move-result-object v4

    :try_start_18
    iget-object v1, p2, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v3, "postId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1f} :catch_1ad

    move-result-object v3

    :try_start_20
    iget-object v1, p2, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v5, "triggerCommentId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_27} :catch_1b3

    move-result-object v1

    :goto_28
    iget-object v5, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v5}, Lcom/bbm/ui/c/am;->d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v5, v4}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v4

    if-eqz v4, :cond_3c

    iget-object v5, v4, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v5, v6, :cond_48

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v1

    move-object v4, v1

    move-object v3, v2

    move-object v1, v2

    :goto_41
    invoke-static {v4}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_28

    :cond_48
    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v2, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v2}, Lcom/bbm/ui/c/am;->d(Lcom/bbm/ui/c/am;)Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v5, v4, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-static {v5, v3, v1}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->O(Ljava/lang/String;)Lcom/bbm/d/eo;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v1, v2, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v3, :cond_3c

    :cond_68
    iget-object v1, p2, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->a:Lcom/bbm/d/ej;

    if-ne v1, v3, :cond_e8

    iget-object v1, v0, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-direct {p0, v4}, Lcom/bbm/ui/c/ap;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v2, v0, Lcom/bbm/ui/c/as;->b:Landroid/widget/TextView;

    iget-wide v5, p2, Lcom/bbm/d/ei;->a:J

    cmp-long v1, v5, v10

    if-nez v1, :cond_c5

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e053d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9d
    :goto_9d
    iget-object v1, v0, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    new-instance v2, Lcom/bbm/ui/c/ar;

    iget-object v3, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    iget-boolean v5, v4, Lcom/bbm/d/ec;->t:Z

    invoke-direct {v2, v3, p2}, Lcom/bbm/ui/c/ar;-><init>(Lcom/bbm/ui/c/am;Lcom/bbm/d/ei;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/SquaredObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/bbm/ui/c/as;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/bbm/ui/c/ar;

    iget-object v3, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    iget-boolean v4, v4, Lcom/bbm/d/ec;->t:Z

    invoke-direct {v2, v3, p2}, Lcom/bbm/ui/c/ar;-><init>(Lcom/bbm/ui/c/am;Lcom/bbm/d/ei;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/bbm/ui/c/as;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbm/ui/c/aq;

    invoke-direct {v1, p0, p2}, Lcom/bbm/ui/c/aq;-><init>(Lcom/bbm/ui/c/ap;Lcom/bbm/d/ei;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3c

    :cond_c5
    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e053c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    aput-object v7, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    :cond_e8
    iget-object v1, p2, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->b:Lcom/bbm/d/ej;

    if-ne v1, v3, :cond_147

    iget-boolean v1, v2, Lcom/bbm/d/eo;->c:Z

    if-eqz v1, :cond_123

    iget-object v1, v0, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-direct {p0, v4}, Lcom/bbm/ui/c/ap;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_fb
    iget-object v3, v0, Lcom/bbm/ui/c/as;->b:Landroid/widget/TextView;

    iget-wide v5, p2, Lcom/bbm/d/ei;->a:J

    cmp-long v1, v5, v10

    if-nez v1, :cond_129

    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e053b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    aput-object v2, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    :cond_123
    iget-object v1, p2, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/bbm/ui/c/ap;->a(Lcom/bbm/ui/c/as;Lcom/bbm/d/eo;Ljava/lang/String;)V

    goto :goto_fb

    :cond_129
    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e053a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11e

    :cond_147
    iget-object v1, p2, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->c:Lcom/bbm/d/ej;

    if-ne v1, v3, :cond_9d

    iget-boolean v1, v2, Lcom/bbm/d/eo;->c:Z

    if-eqz v1, :cond_186

    iget-object v1, v0, Lcom/bbm/ui/c/as;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-direct {p0, v4}, Lcom/bbm/ui/c/ap;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_15a
    iget-object v3, v0, Lcom/bbm/ui/c/as;->b:Landroid/widget/TextView;

    iget-wide v5, p2, Lcom/bbm/d/ei;->a:J

    cmp-long v1, v5, v10

    if-nez v1, :cond_18f

    iget-boolean v1, v2, Lcom/bbm/d/eo;->c:Z

    if-eqz v1, :cond_18c

    iget-object v1, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    :goto_168
    iget-object v2, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v2}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0539

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_181
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    :cond_186
    iget-object v1, p2, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/bbm/ui/c/ap;->a(Lcom/bbm/ui/c/as;Lcom/bbm/d/eo;Ljava/lang/String;)V

    goto :goto_15a

    :cond_18c
    iget-object v1, v2, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    goto :goto_168

    :cond_18f
    iget-object v1, p0, Lcom/bbm/ui/c/ap;->f:Lcom/bbm/ui/c/am;

    invoke-static {v1}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0538

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_181

    :catch_1ad
    move-exception v1

    move-object v3, v4

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_41

    :catch_1b3
    move-exception v1

    move-object v12, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v12

    goto/16 :goto_41
.end method
