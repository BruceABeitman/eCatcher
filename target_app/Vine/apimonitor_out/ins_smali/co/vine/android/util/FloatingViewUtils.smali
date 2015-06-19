.class public Lco/vine/android/util/FloatingViewUtils;
.super Ljava/lang/Object;
.source "FloatingViewUtils.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static buildFloatingViewFor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;III)Landroid/graphics/Bitmap;
.registers 12
const/4 v5, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
const/high16 v4, 0x10
invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheQuality(I)V
invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {p1, v5}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;
move-result-object v4
invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
new-instance v4, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-static {p2, v4}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I
iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
iput p4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iput p5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v3
.end method