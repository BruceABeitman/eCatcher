.class public Lcom/instagram/android/creation/widget/ShareTableButton;
.super Landroid/widget/CompoundButton;
.source "ShareTableButton.java"
.field private a:Landroid/view/View$OnClickListener;
.field private b:Z
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
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->b:Z
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->refreshDrawableState()V
return-void
.end method
.method protected drawableStateChanged()V
.registers 4
invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isChecked()Z
move-result v1
if-eqz v1, :cond_29
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V
:goto_28
return-void
:cond_29
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isEnabled()Z
move-result v1
if-eqz v1, :cond_33
iget-boolean v1, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->b:Z
if-eqz v1, :cond_4c
:cond_33
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->grey_light:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-virtual {p0, v1}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V
goto :goto_28
:cond_4c
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/as;->grey_medium:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setTextColor(I)V
goto :goto_28
.end method
.method public performClick()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;
invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
const/4 v0, 0x1
:goto_a
return v0
:cond_b
invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z
move-result v0
goto :goto_a
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ShareTableButton;->isClickable()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ShareTableButton;->setClickable(Z)V
:cond_a
iput-object p1, p0, Lcom/instagram/android/creation/widget/ShareTableButton;->a:Landroid/view/View$OnClickListener;
return-void
.end method