.class public Lcom/instagram/ui/widget/refresh/RefreshButton;
.super Landroid/widget/ViewSwitcher;
.source "RefreshButton.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->nav_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/instagram/ui/widget/spinner/RefreshSpinner;

    invoke-direct {v0, p1}, Lcom/instagram/ui/widget/spinner/RefreshSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->refresh_button_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_f
    return-void

    :cond_10
    check-cast p1, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;

    invoke-virtual {p1}, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ViewSwitcher;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    goto :goto_f
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;

    invoke-direct {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->getDisplayedChild()I

    move-result v0

    iput v0, v1, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;->a:I

    return-object v1
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setClickable(Z)V

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/ui/widget/refresh/RefreshButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_15

    const/16 v0, 0xff

    :goto_11
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_15
    const/16 v0, 0x4d

    goto :goto_11
.end method
