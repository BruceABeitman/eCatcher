.class  Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public collapseActionView(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public expandActionView(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getActionView(Landroid/view/MenuItem;)Landroid/view/View;
.registers 3
invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public isActionViewExpanded(Landroid/view/MenuItem;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.registers 3
return-object p1
.end method
.method public setShowAsAction(Landroid/view/MenuItem;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V
return-void
.end method