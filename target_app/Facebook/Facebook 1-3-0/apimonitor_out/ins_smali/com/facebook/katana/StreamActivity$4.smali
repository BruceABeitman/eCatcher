.class  Lcom/facebook/katana/StreamActivity$4;
.super Ljava/lang/Object;
.source "StreamActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Lcom/facebook/katana/StreamActivity;
.method constructor <init>(Lcom/facebook/katana/StreamActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 11
const/4 v5, 0x0
const/16 v0, 0x64
if-ne p2, v0, :cond_34
invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_34
iget-object v0, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamActivity;->showDialog(I)V
iget-object v6, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
iget-object v0, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
#getter for: Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/StreamActivity;->access$18(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
iget-object v2, p0, Lcom/facebook/katana/StreamActivity$4;->this$0:Lcom/facebook/katana/StreamActivity;
#getter for: Lcom/facebook/katana/StreamActivity;->mUserId:J
invoke-static {v2}, Lcom/facebook/katana/StreamActivity;->access$11(Lcom/facebook/katana/StreamActivity;)J
move-result-wide v2
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->streamPublish(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
move-result-object v0
#setter for: Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
invoke-static {v6, v0}, Lcom/facebook/katana/StreamActivity;->access$15(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V
:cond_34
return v5
.end method