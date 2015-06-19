.class  Lcom/facebook/katana/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$2;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDrawerOpened()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$2;->this$0:Lcom/facebook/katana/HomeActivity;
#calls: Lcom/facebook/katana/HomeActivity;->hideUnreadNotificationsBadge()V
invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$15(Lcom/facebook/katana/HomeActivity;)V
return-void
.end method