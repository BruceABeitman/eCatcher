.class public Lcom/pinguo/camera360/shop/view/TryEffectItemView;
.super Landroid/widget/LinearLayout;
.source "TryEffectItemView.java"


# instance fields
.field private mEffectIconImage:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

.field private mEffectNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->mEffectIconImage:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->mEffectIconImage:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->mEffectNameText:Landroid/widget/TextView;

    return-void
.end method

.method public setEffectIcon(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->mEffectIconImage:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setEffectName(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/TryEffectItemView;->mEffectNameText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
