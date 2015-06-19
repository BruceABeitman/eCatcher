.class  Lcom/tencent/weibo/sdk/android/component/FriendActivity$2;
.super Ljava/lang/Object;
.source "FriendActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 4
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$2;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->search(Ljava/lang/String;)V
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method