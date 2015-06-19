.class public Lco/vine/android/widget/RoundedDivider;
.super Landroid/view/View;
.source "RoundedDivider.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/RoundedDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/RoundedDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v2, Lco/vine/android/R$styleable;->RoundedDivider:[I
invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const v2, 0x7f02024a
invoke-virtual {p0, v2}, Lco/vine/android/widget/RoundedDivider;->setBackgroundResource(I)V
invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
invoke-virtual {p0}, Lco/vine/android/widget/RoundedDivider;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method