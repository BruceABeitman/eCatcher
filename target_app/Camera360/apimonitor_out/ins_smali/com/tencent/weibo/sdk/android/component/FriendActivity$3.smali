.class  Lcom/tencent/weibo/sdk/android/component/FriendActivity$3;
.super Ljava/lang/Object;
.source "FriendActivity.java"
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$3;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onGroupExpand(I)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/FriendActivity$3; onGroupExpand "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/FriendActivity$3; onGroupExpand"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method