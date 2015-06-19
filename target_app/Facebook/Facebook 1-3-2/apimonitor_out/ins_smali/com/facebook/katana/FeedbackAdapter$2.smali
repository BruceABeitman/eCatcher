.class  Lcom/facebook/katana/FeedbackAdapter$2;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/FeedbackAdapter;
.field private final synthetic val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;
.method constructor <init>(Lcom/facebook/katana/FeedbackAdapter;Lcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;
iput-object p2, p0, Lcom/facebook/katana/FeedbackAdapter$2;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackAdapter$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;
#setter for: Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
invoke-static {v0, v2}, Lcom/facebook/katana/FeedbackAdapter;->access$0(Lcom/facebook/katana/FeedbackAdapter;Z)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$2;->val$commentListener:Lcom/facebook/katana/FeedbackAdapter$CommentsListener;
iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter$2;->this$0:Lcom/facebook/katana/FeedbackAdapter;
#getter for: Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v1}, Lcom/facebook/katana/FeedbackAdapter;->access$1(Lcom/facebook/katana/FeedbackAdapter;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->doesUserLike()Z
move-result v1
if-eqz v1, :cond_22
const/4 v1, 0x0
:goto_1e
invoke-interface {v0, v1}, Lcom/facebook/katana/FeedbackAdapter$CommentsListener;->onLike(Z)V
const-string v1, " - Lcom/facebook/katana/FeedbackAdapter$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_22
move v1, v2
goto :goto_1e
.end method