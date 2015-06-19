.class final Lcom/bbm/ui/activities/pc;
.super Ljava/lang/Object;
.source "GroupListsCommentActivity.java"
.implements Lcom/bbm/ui/bo;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/pc;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Z)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/pc;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a(Lcom/bbm/ui/activities/GroupListsCommentActivity;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/pc;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/pc;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0, v2}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a(Lcom/bbm/ui/activities/GroupListsCommentActivity;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/pc;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V
goto :goto_12
.end method