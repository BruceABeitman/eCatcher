.class  Landroid/support/v4/view/al;
.super Ljava/lang/Object;
.source "ViewCompat.java"
.implements Landroid/support/v4/view/at;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/view/View;)I
.registers 3
const/4 v0, 0x2
return v0
.end method
.method  a()J
.registers 3
const-wide/16 v0, 0xa
return-wide v0
.end method
.method public a(Landroid/view/View;IIII)V
.registers 13
invoke-virtual {p0}, Landroid/support/v4/view/al;->a()J
move-result-wide v1
move-object v0, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V
return-void
.end method
.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 4
return-void
.end method
.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
.registers 3
return-void
.end method
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
.registers 3
return-void
.end method
.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v4/view/al;->a()J
move-result-wide v0
invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public a(Landroid/view/View;Z)V
.registers 3
return-void
.end method
.method public a(Landroid/view/View;I)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public b(Landroid/view/View;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v4/view/al;->a()J
move-result-wide v0
invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V
return-void
.end method
.method public b(Landroid/view/View;I)V
.registers 3
return-void
.end method
.method public c(Landroid/view/View;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public d(Landroid/view/View;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public e(Landroid/view/View;)I
.registers 3
const/4 v0, 0x0
return v0
.end method