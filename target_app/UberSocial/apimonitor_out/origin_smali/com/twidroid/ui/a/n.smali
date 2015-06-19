.class public Lcom/twidroid/ui/a/n;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FacebookNewsAdapter"


# instance fields
.field private final b:Lcom/twidroid/ui/themes/r;

.field private c:Ljava/util/List;

.field private d:Lcom/twidroid/ui/widgets/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/twidroid/UberSocialApplication;Lcom/twidroid/ui/widgets/d;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p3}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    iput-object p4, p0, Lcom/twidroid/ui/a/n;->d:Lcom/twidroid/ui/widgets/d;

    if-nez p2, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    :goto_15
    return-void

    :cond_16
    iput-object p2, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    goto :goto_15
.end method


# virtual methods
.method public a(I)Lcom/twidroid/model/facebook/FacebookNewsModel;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookNewsModel;
    .registers 5

    iget-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(Landroid/widget/TextView;J)V
    .registers 11

    const-wide/16 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    const-wide/32 v2, 0x36ee80

    div-long v2, v0, v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    :cond_75
    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    :cond_ac
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, v0, v5

    if-ltz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3d
.end method

.method public a(Ljava/lang/String;Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/net/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twidroid/ui/a/n;->d:Lcom/twidroid/ui/widgets/d;

    invoke-virtual {p2, p1, p3, v0}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/ui/a/n;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;

    invoke-virtual {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    move v1, v2

    goto :goto_1c
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/n;->a(I)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18

    if-nez p2, :cond_14

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030053

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_14
    const v1, 0x7f090110

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twidroid/ui/widgets/CachedImageView;

    const v2, 0x7f090111

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090114

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090118

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090117

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twidroid/ui/widgets/CachedImageView;

    const v6, 0x7f09011c

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090112

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09011a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090115

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/twidroid/ui/widgets/CachedImageView;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/n;->a(I)Lcom/twidroid/model/facebook/FacebookNewsModel;

    move-result-object v10

    new-instance v11, Lcom/twidroid/net/j;

    invoke-direct {v11}, Lcom/twidroid/net/j;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/twidroid/net/j;->a(Z)Lcom/twidroid/net/j;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://graph.facebook.com/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/picture?type=square"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12, v1, v11}, Lcom/twidroid/ui/a/n;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/net/j;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    iget-object v12, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    iget v12, v12, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v12, v12

    invoke-virtual {v3, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    iget-object v12, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    iget v12, v12, Lcom/twidroid/ui/themes/r;->aF:I

    int-to-float v12, v12

    invoke-virtual {v7, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    iget-object v12, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    iget v12, v12, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v12, v12

    invoke-virtual {v2, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    iget-object v12, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    iget v12, v12, Lcom/twidroid/ui/themes/r;->aE:I

    int-to-float v12, v12

    invoke-virtual {v4, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_197

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11b
    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_21a

    iget-object v1, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c1

    new-instance v1, Lcom/twidroid/ui/b/g;

    const/high16 v2, 0x40c0

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v3

    iget-object v9, p0, Lcom/twidroid/ui/a/n;->b:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v9}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v9

    invoke-direct {v1, v2, v3, v9}, Lcom/twidroid/ui/b/g;-><init>(III)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    :cond_175
    :goto_175
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_179
    :goto_179
    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->g()J

    move-result-wide v1

    invoke-virtual {p0, v7, v1, v2}, Lcom/twidroid/ui/a/n;->a(Landroid/widget/TextView;J)V

    return-object p2

    :cond_197
    const-string v1, "status"

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ba

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11b

    :cond_1ba
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_11b

    :cond_1c1
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v1, 0x4240

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/twidroid/net/j;->b(Z)Lcom/twidroid/net/j;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/twidroid/net/j;->a(II)Lcom/twidroid/net/j;

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v11}, Lcom/twidroid/ui/a/n;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/net/j;)V

    const-string v1, "photo"

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_175

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_175

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_175

    :cond_21a
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_252

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    :cond_22f
    :goto_22f
    const-string v1, "link"

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_179

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_179

    :cond_252
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setVisibility(I)V

    const/high16 v1, 0x4240

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/twidroid/net/j;->b(Z)Lcom/twidroid/net/j;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/twidroid/net/j;->a(II)Lcom/twidroid/net/j;

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v9, v11}, Lcom/twidroid/ui/a/n;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/net/j;)V

    const-string v1, "photo"

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a6

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22f

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22f

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22f

    :cond_2a6
    const-string v1, "link"

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22f

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d3

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_22f

    :cond_2d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/twidroid/model/facebook/FacebookNewsModel;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/ui/a/n;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c011b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_22f
.end method
