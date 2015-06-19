.class  Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnActionExpandListener;
.field private mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
.method public constructor <init>(Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
return-void
.end method
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;->mWrapped:Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method