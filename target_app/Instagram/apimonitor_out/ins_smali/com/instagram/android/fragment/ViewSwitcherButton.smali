.class public Lcom/instagram/android/fragment/ViewSwitcherButton;
.super Landroid/widget/ImageView;
.source "ViewSwitcherButton.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected drawableStateChanged()V
.registers 4
invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->isEnabled()Z
move-result v0
if-eqz v0, :cond_3a
const/16 v0, 0xff
:goto_13
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->isEnabled()Z
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->isSelected()Z
move-result v0
if-nez v0, :cond_28
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->isPressed()Z
move-result v0
if-eqz v0, :cond_3d
:cond_28
invoke-virtual {p0}, Lcom/instagram/android/fragment/ViewSwitcherButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v0
:goto_36
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
:cond_3a
const/16 v0, 0x80
goto :goto_13
:cond_3d
const/4 v0, 0x0
goto :goto_36
.end method