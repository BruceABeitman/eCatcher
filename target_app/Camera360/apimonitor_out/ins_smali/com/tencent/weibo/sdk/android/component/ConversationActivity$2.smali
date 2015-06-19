.class  Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lt v0, v2, :cond_2a
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->setCvlist(Ljava/util/List;)V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->notifyDataSetChanged()V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#calls: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->click(Ljava/util/List;)V
invoke-static {v2, v1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$2(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;Ljava/util/List;)V
return-void
:cond_2a
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_4f
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_4f
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method