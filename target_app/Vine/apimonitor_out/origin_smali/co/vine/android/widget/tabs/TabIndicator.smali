.class public Lco/vine/android/widget/tabs/TabIndicator;
.super Landroid/widget/RelativeLayout;
.source "TabIndicator.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconNewResId:I

.field private mIconResId:I

.field private mNew:Z

.field private mNewIndicator:Landroid/widget/ImageView;

.field private mTabText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static createTextColorList(II)Landroid/content/res/ColorStateList;
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v7, [[I

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    aput-object v2, v1, v6

    new-array v2, v7, [I

    aput p0, v2, v4

    aput p0, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
    .registers 8

    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/tabs/TabIndicator;

    if-lez p3, :cond_10

    invoke-virtual {v0, p3, p4}, Lco/vine/android/widget/tabs/TabIndicator;->setTabIcon(II)V

    :cond_10
    return-object v0
.end method

.method public static newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;IZ)Lco/vine/android/widget/tabs/TabIndicator;
    .registers 8

    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/tabs/TabIndicator;

    if-lez p3, :cond_10

    invoke-virtual {v0, p3, p4}, Lco/vine/android/widget/tabs/TabIndicator;->setTabText(IZ)V

    :cond_10
    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    :cond_7
    return-void
.end method

.method public getIndicatorText()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNewIndicator()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lco/vine/android/widget/tabs/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lco/vine/android/widget/tabs/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lco/vine/android/widget/tabs/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setColor(I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setNew(Z)V
    .registers 4

    iget-boolean v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNew:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_14

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    :goto_11
    iput-boolean p1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNew:Z

    goto :goto_4

    :cond_14
    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mNewIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    :cond_1c
    iget v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIconNewResId:I

    if-lez v0, :cond_11

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIconNewResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    :cond_2a
    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11
.end method

.method public setTabIcon(II)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    if-lez p1, :cond_16

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    :goto_11
    iput p1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIconResId:I

    iput p2, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIconNewResId:I

    return-void

    :cond_16
    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11
.end method

.method public setTabText(IZ)V
    .registers 6

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/TabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-lez p1, :cond_20

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lco/vine/android/widget/tabs/TabIndicator;->mTabText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f
.end method

.method public unSetColor()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabIndicator;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
