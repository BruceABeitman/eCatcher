.class final Landroid/support/v4/view/ar;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/as;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/VelocityTracker;I)F
.registers 4
invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F
move-result v0
return v0
.end method
.method public final b(Landroid/view/VelocityTracker;I)F
.registers 4
invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F
move-result v0
return v0
.end method