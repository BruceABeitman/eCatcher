.class final Lcom/bbm/ui/activities/ds;
.super Lcom/bbm/ui/gk;
.source "ChannelReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/ui/activities/ea;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/activities/ChannelReportsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bbm/ui/ListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/ec;

    iget-object v0, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {v2, v0, v3}, Lcom/bbm/ui/activities/ec;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;B)V

    const v0, 0x7f0a0146

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    const v0, 0x7f0a014a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a014b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ec;->c:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a0149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ec;->d:Landroid/widget/TextView;

    const v0, 0x7f0a014c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/ec;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/bbm/ui/activities/dz;

    iget-object v3, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {v0, v3}, Lcom/bbm/ui/activities/dz;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v2, v0, Lcom/bbm/ui/activities/dz;->a:Lcom/bbm/ui/activities/ec;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->h(Lcom/bbm/ui/activities/ChannelReportsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/ui/activities/ea;

    iget-object v0, p1, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p1, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    goto :goto_c
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Ljava/lang/Long;

    check-cast p1, Lcom/bbm/ui/ListHeaderView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    const v0, 0x7f0e0378

    :goto_11
    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    const v0, 0x7f0a05c0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_38
    const v0, 0x7f0e0377

    goto :goto_11
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 12

    const/4 v5, 0x0

    const v6, 0x7f0b00af

    const/16 v8, 0x8

    const/4 v7, 0x0

    check-cast p2, Lcom/bbm/ui/activities/ea;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/dz;

    iget-object v1, p2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->i(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v1, v2, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v3, :cond_41

    :cond_3b
    iput-object v5, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;

    :cond_3d
    :goto_3d
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_41
    iget-object v3, v0, Lcom/bbm/ui/activities/dz;->a:Lcom/bbm/ui/activities/ec;

    iput-object p2, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;

    new-instance v4, Lcom/bbm/util/b/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v5, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v5, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v4, v1, v5}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iget-object v1, v2, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_97

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1, v8}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    :goto_74
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->c:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, v2, Lcom/bbm/d/fw;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->d:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/bbm/d/fw;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v2, v2, Lcom/bbm/d/fw;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    :cond_97
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, v2, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1, v7}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    goto :goto_74

    :cond_a4
    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->j(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->O(Ljava/lang/String;)Lcom/bbm/d/eo;

    move-result-object v2

    if-eqz v2, :cond_ca

    iget-object v1, v2, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v3, :cond_ce

    :cond_ca
    iput-object v5, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;

    goto/16 :goto_3d

    :cond_ce
    iget-object v3, v0, Lcom/bbm/ui/activities/dz;->a:Lcom/bbm/ui/activities/ec;

    iput-object p2, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;

    iget-object v1, v2, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iget-boolean v4, v2, Lcom/bbm/d/eo;->c:Z

    if-eqz v4, :cond_12b

    new-instance v4, Lcom/bbm/util/b/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v5, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v5, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v4, v1, v5}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :goto_fa
    iget-object v1, v2, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18c

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1, v8}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    :goto_107
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->c:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, v2, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->d:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/bbm/d/eo;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v2, v2, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3d

    :cond_12b
    if-eqz v1, :cond_17b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_17b

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    iget-object v5, v2, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v4

    iget-object v5, v4, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_151

    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_fa

    :cond_151
    iget-object v4, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v4}, Lcom/bbm/ui/SquaredObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v4}, Lcom/bbm/util/m;->a(Ljava/util/List;I)Lcom/bbm/util/m;

    move-result-object v1

    iget-object v4, p2, Lcom/bbm/ui/activities/ea;->c:Lcom/bbm/util/m;

    if-eqz v4, :cond_169

    iget-object v4, p2, Lcom/bbm/ui/activities/ea;->c:Lcom/bbm/util/m;

    invoke-virtual {v4, v1}, Lcom/bbm/util/m;->a(Lcom/bbm/util/m;)Z

    move-result v4

    if-nez v4, :cond_16b

    :cond_169
    iput-object v1, p2, Lcom/bbm/ui/activities/ea;->c:Lcom/bbm/util/m;

    :cond_16b
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v4, p2, Lcom/bbm/ui/activities/ea;->c:Lcom/bbm/util/m;

    iget-object v5, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/bbm/util/m;->a(Landroid/content/Context;)Lcom/bbm/j/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_fa

    :cond_17b
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->a:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v4, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v4, v4, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v4, v4, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v4}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/ui/SquaredObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_fa

    :cond_18c
    iget-boolean v1, v2, Lcom/bbm/d/eo;->c:Z

    if-eqz v1, :cond_1a8

    iget-object v4, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ds;->f:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a1
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1, v7}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    goto/16 :goto_107

    :cond_1a8
    iget-object v1, v3, Lcom/bbm/ui/activities/ec;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, v2, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a1
.end method
