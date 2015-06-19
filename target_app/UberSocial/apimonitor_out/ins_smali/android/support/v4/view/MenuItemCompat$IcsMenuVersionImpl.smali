.class  Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;
.super Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V
return-void
.end method
.method public collapseActionView(Landroid/view/MenuItem;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatIcs;->collapseActionView(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public expandActionView(Landroid/view/MenuItem;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatIcs;->expandActionView(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public isActionViewExpanded(Landroid/view/MenuItem;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatIcs;->isActionViewExpanded(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.registers 4
if-nez p2, :cond_8
const/4 v0, 0x0
invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompatIcs;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)Landroid/view/MenuItem;
move-result-object v0
:goto_7
return-object v0
:cond_8
new-instance v0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;
invoke-direct {v0, p0, p2}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;-><init>(Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompatIcs;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)Landroid/view/MenuItem;
move-result-object v0
goto :goto_7
.end method