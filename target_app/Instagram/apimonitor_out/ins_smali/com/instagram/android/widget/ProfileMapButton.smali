.class public Lcom/instagram/android/widget/ProfileMapButton;
.super Landroid/widget/ImageView;
.source "ProfileMapButton.java"
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
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->isPressed()Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v0
:goto_1f
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
:cond_23
const/4 v0, 0x0
goto :goto_1f
.end method
.method public setUser(Lcom/instagram/user/c/a;)V
.registers 5
const/16 v1, 0x80
const/4 v2, 0x1
invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {p0, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V
:goto_17
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->invalidate()V
return-void
:cond_1b
invoke-static {p1}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z
move-result v0
if-nez v0, :cond_37
invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z
move-result v0
if-eqz v0, :cond_48
invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_48
invoke-virtual {p1}, Lcom/instagram/user/c/a;->y()Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lez v0, :cond_48
:cond_37
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {p0, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V
goto :goto_17
:cond_48
invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V
goto :goto_17
.end method