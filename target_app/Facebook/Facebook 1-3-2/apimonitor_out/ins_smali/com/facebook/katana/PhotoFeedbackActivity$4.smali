.class  Lcom/facebook/katana/PhotoFeedbackActivity$4;
.super Ljava/lang/Object;
.source "PhotoFeedbackActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
.method constructor <init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$4;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotoFeedbackActivity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$4;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v1, 0x7f0b0029
invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/EditText;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/facebook/katana/PhotoFeedbackActivity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method