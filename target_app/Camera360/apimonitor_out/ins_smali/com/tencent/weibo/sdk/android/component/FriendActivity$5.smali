.class  Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;
.super Ljava/lang/Object;
.source "FriendActivity.java"
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.field private final synthetic val$childs:Ljava/util/Map;
.field private final synthetic val$groupt:Ljava/util/List;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;Ljava/util/Map;Ljava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->val$childs:Ljava/util/Map;
iput-object p3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->val$groupt:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/FriendActivity$5; onChildClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
const-class v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string/jumbo v2, "firend"
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->val$childs:Ljava/util/Map;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->val$groupt:Ljava/util/List;
invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/tencent/weibo/sdk/android/model/Firend;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2, v0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->setResult(ILandroid/content/Intent;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->finish()V
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/FriendActivity$5; onChildClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
.end method