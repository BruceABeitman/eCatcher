.class  Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
.field final synthetic this$0:Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;
.field final synthetic val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
.method constructor <init>(Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->this$0:Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;
iput-object p2, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method