.class  Landroid/support/v4/view/z;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/ab;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
.registers 4
invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/MenuItem;)Landroid/view/View;
.registers 3
invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/MenuItem;I)V
.registers 3
invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V
return-void
.end method
.method public final b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
.registers 4
invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public b(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public c(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method