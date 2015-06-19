.class  Lcom/facebook/katana/PickFriendsAdapter$1;
.super Ljava/lang/Object;
.source "PickFriendsAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsAdapter;
.method constructor <init>(Lcom/facebook/katana/PickFriendsAdapter;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PickFriendsAdapter$1;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PickFriendsAdapter$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/facebook/katana/PickFriendsAdapter$1;->this$0:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v1, v0}, Lcom/facebook/katana/PickFriendsAdapter;->flipMarked(I)V
const-string v1, " - Lcom/facebook/katana/PickFriendsAdapter$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method