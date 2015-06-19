.class public final Lcom/instagram/android/b/b;
.super Ljava/lang/Object;
.source "ReverseInterpolator.java"
.implements Landroid/view/animation/Interpolator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getInterpolation(F)F
.registers 3
const/high16 v0, 0x3f80
sub-float v0, p1, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
return v0
.end method