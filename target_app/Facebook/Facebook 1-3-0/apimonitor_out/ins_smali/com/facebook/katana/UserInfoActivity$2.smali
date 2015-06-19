.class  Lcom/facebook/katana/UserInfoActivity$2;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/UserInfoActivity;
.field private final synthetic val$textInput:Landroid/widget/TextView;
.method constructor <init>(Lcom/facebook/katana/UserInfoActivity;Landroid/widget/TextView;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
iput-object p2, p0, Lcom/facebook/katana/UserInfoActivity$2;->val$textInput:Landroid/widget/TextView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UserInfoActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$2;->val$textInput:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_15
const/4 v0, 0x0
:cond_15
iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
iget-object v2, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
#getter for: Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v2}, Lcom/facebook/katana/UserInfoActivity;->access$15(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
#getter for: Lcom/facebook/katana/UserInfoActivity;->mUserId:J
invoke-static {v4}, Lcom/facebook/katana/UserInfoActivity;->access$10(Lcom/facebook/katana/UserInfoActivity;)J
move-result-wide v4
invoke-virtual {v2, v3, v4, v5, v0}, Lcom/facebook/katana/binding/AppSession;->friendsAddFriend(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
move-result-object v2
#setter for: Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->access$13(Lcom/facebook/katana/UserInfoActivity;Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity$2;->this$0:Lcom/facebook/katana/UserInfoActivity;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/facebook/katana/UserInfoActivity;->showDialog(I)V
const-string v1, " - Lcom/facebook/katana/UserInfoActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method