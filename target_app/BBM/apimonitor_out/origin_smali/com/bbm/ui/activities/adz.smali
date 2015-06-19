.class final Lcom/bbm/ui/activities/adz;
.super Lcom/bbm/ui/ga;
.source "SearchResultsChannelsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ga",
        "<",
        "Lcom/bbm/d/gb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;Lcom/bbm/j/x;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/gb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    const/16 v0, 0x32

    invoke-direct {p0, p2, v0}, Lcom/bbm/ui/ga;-><init>(Lcom/bbm/j/x;I)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/aea;

    iget-object v0, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/bbm/ui/activities/aea;-><init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;B)V

    const v0, 0x7f0a0295

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a0299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->a:Landroid/widget/TextView;

    const v0, 0x7f0a029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->b:Landroid/widget/TextView;

    const v0, 0x7f0a029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0298

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->b(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 14

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p2, Lcom/bbm/d/gb;

    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/aea;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v4, p2, Lcom/bbm/d/gb;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v4, v1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_223

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p2, Lcom/bbm/d/gb;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_223

    iget-object v1, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p2, Lcom/bbm/d/gb;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ec;

    move-object v6, v1

    :goto_3e
    if-eqz v6, :cond_1f4

    iget-object v1, v6, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_1f4

    iget-object v1, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->c(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p2, Lcom/bbm/d/gb;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->d(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Lcom/bbm/util/b/a;

    move-result-object v1

    iget-object v4, v6, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v5, v0, Lcom/bbm/ui/activities/aea;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v5}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->a:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->b:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/bbm/d/ec;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/bbm/ui/activities/aea;->f:Landroid/widget/ImageView;

    iget-boolean v1, v6, Lcom/bbm/d/ec;->b:Z

    if-eqz v1, :cond_126

    move v1, v2

    :goto_73
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, v6, Lcom/bbm/d/ec;->r:Z

    if-eqz v1, :cond_129

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020398

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_95
    iget-boolean v1, v6, Lcom/bbm/d/ec;->b:Z

    if-nez v1, :cond_a1

    iget-boolean v1, v6, Lcom/bbm/d/ec;->r:Z

    if-nez v1, :cond_a1

    iget-boolean v1, v6, Lcom/bbm/d/ec;->t:Z

    if-eqz v1, :cond_cf

    :cond_a1
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-virtual {v4}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-boolean v4, v6, Lcom/bbm/d/ec;->b:Z

    if-eqz v4, :cond_ca

    iget-boolean v4, v6, Lcom/bbm/d/ec;->r:Z

    if-nez v4, :cond_c4

    iget-boolean v4, v6, Lcom/bbm/d/ec;->t:Z

    if-eqz v4, :cond_ca

    :cond_c4
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_ca
    iget-object v4, v0, Lcom/bbm/ui/activities/aea;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_cf
    iget-object v1, v6, Lcom/bbm/d/ec;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_151

    invoke-static {}, Lcom/bbm/util/bd;->a()J

    move-result-wide v4

    iget-object v1, v6, Lcom/bbm/d/ec;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-wide v7, 0x9a7ec800L

    cmp-long v1, v4, v7

    if-gez v1, :cond_151

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    const v5, 0x7f0e0522

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-virtual {v4}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09015e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_110
    iget-boolean v1, v6, Lcom/bbm/d/ec;->w:Z

    if-eq v1, v9, :cond_118

    iget-boolean v1, v6, Lcom/bbm/d/ec;->t:Z

    if-ne v1, v9, :cond_1ed

    :cond_118
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11d
    iget-object v0, v0, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_122
    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_126
    move v1, v3

    goto/16 :goto_73

    :cond_129
    iget-boolean v1, v6, Lcom/bbm/d/ec;->t:Z

    if-eqz v1, :cond_14a

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->e(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02039a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_14a
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_151
    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->f(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v7, v6, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_176

    iget-object v1, v6, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    const-string v7, "AllTime"

    invoke-static {v1, v7}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/bbm/ui/activities/adz;->d:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;

    invoke-static {v7}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->f(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v6, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_176
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;

    move-result-object v1

    iget-object v7, v1, Lcom/bbm/d/em;->h:Ljava/lang/String;

    invoke-static {v7}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18c

    iget-object v1, v1, Lcom/bbm/d/em;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_18c
    const-string v1, ""

    const-wide/32 v7, 0xc350

    cmp-long v7, v4, v7

    if-lez v7, :cond_1b0

    const-string v1, "50000+"

    :cond_197
    :goto_197
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e6

    iget-object v4, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_110

    :cond_1b0
    const-wide/16 v7, 0x2710

    cmp-long v7, v4, v7

    if-lez v7, :cond_1b9

    const-string v1, "10000+"

    goto :goto_197

    :cond_1b9
    const-wide/16 v7, 0x1388

    cmp-long v7, v4, v7

    if-lez v7, :cond_1c2

    const-string v1, "5000+"

    goto :goto_197

    :cond_1c2
    const-wide/16 v7, 0x3e8

    cmp-long v7, v4, v7

    if-lez v7, :cond_1cb

    const-string v1, "1000+"

    goto :goto_197

    :cond_1cb
    const-wide/16 v7, 0x1f4

    cmp-long v7, v4, v7

    if-lez v7, :cond_1d4

    const-string v1, "500+"

    goto :goto_197

    :cond_1d4
    const-wide/16 v7, 0x64

    cmp-long v7, v4, v7

    if-lez v7, :cond_1dd

    const-string v1, "100+"

    goto :goto_197

    :cond_1dd
    const-wide/16 v7, 0x32

    cmp-long v4, v4, v7

    if-lez v4, :cond_197

    const-string v1, "50+"

    goto :goto_197

    :cond_1e6
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_110

    :cond_1ed
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11d

    :cond_1f4
    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v2}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/activities/aea;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/bbm/ui/activities/aea;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_122

    :cond_223
    move-object v6, v1

    goto/16 :goto_3e
.end method
