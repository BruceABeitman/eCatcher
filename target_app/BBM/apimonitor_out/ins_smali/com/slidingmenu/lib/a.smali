.class final Lcom/slidingmenu/lib/a;
.super Ljava/lang/Object;
.source "CustomViewAbove.java"
.implements Landroid/view/animation/Interpolator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getInterpolation(F)F
.registers 5
const/high16 v2, 0x3f80
sub-float v0, p1, v2
mul-float v1, v0, v0
mul-float/2addr v1, v0
mul-float/2addr v1, v0
mul-float/2addr v0, v1
add-float/2addr v0, v2
return v0
.end method