.class final Landroid/support/v4/view/bf;
.super Ljava/lang/Object;
.source "ViewPager.java"
.implements Landroid/view/animation/Interpolator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getInterpolation(F)F
.registers 4
const/high16 v1, 0x3f80
sub-float/2addr p1, v1
mul-float v0, p1, p1
mul-float/2addr v0, p1
mul-float/2addr v0, p1
mul-float/2addr v0, p1
add-float/2addr v0, v1
return v0
.end method