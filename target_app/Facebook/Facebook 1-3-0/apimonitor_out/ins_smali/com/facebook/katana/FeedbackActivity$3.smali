.class  Lcom/facebook/katana/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 11
const/16 v0, 0x65
if-ne p2, v0, :cond_3d
invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_3d
iget-object v6, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
invoke-static {v2}, Lcom/facebook/katana/FeedbackActivity;->access$16(Lcom/facebook/katana/FeedbackActivity;)J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v4}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->streamAddComment(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
#setter for: Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
invoke-static {v6, v0}, Lcom/facebook/katana/FeedbackActivity;->access$13(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$3;->this$0:Lcom/facebook/katana/FeedbackActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->showDialog(I)V
:cond_3d
const/4 v0, 0x0
return v0
.end method