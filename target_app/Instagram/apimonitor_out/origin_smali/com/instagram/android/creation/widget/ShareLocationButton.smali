.class public Lcom/instagram/android/creation/widget/ShareLocationButton;
.super Landroid/widget/CompoundButton;
.source "ShareLocationButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareLocationButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    :goto_b
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareLocationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareLocationButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_23
    sget v0, Lcom/facebook/as;->grey_light:I

    goto :goto_b
.end method
