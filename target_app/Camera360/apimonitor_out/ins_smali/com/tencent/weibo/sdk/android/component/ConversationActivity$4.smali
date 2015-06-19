.class  Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
.field private final synthetic val$li:Ljava/util/List;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->val$li:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
const-class v2, Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string/jumbo v2, "conversation"
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->val$li:Ljava/util/List;
invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2, v0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->setResult(ILandroid/content/Intent;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->finish()V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method