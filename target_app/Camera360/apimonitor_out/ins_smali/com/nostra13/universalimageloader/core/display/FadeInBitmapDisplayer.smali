.class public Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;
.super Ljava/lang/Object;
.source "FadeInBitmapDisplayer.java"
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private final durationMillis:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I
return-void
.end method
.method public static animate(Landroid/widget/ImageView;I)V
.registers 5
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
new-instance v1, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
.registers 5
invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget v0, p0, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I
invoke-static {p2, v0}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/widget/ImageView;I)V
return-object p1
.end method