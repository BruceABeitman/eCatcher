.class  Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;-><init>()V
return-void
.end method
.method public getOverScrollMode(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public setOverScrollMode(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatGingerbread;->setOverScrollMode(Landroid/view/View;I)V
return-void
.end method