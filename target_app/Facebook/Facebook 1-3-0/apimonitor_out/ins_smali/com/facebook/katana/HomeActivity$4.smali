.class  Lcom/facebook/katana/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/HomeActivity$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;
invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$9(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/NotificationsAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/NotificationsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z
const/16 v2, 0x9
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/HomeActivity$4;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
const-string v1, " - Lcom/facebook/katana/HomeActivity$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method