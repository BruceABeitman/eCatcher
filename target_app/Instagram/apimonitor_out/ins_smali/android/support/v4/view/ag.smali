.class final Landroid/support/v4/view/ag;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"
.implements Landroid/support/v4/view/ai;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/VelocityTracker;I)F
.registers 4
invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F
move-result v0
return v0
.end method
.method public final b(Landroid/view/VelocityTracker;I)F
.registers 4
invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F
move-result v0
return v0
.end method