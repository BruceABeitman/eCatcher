.class  Lcom/facebook/katana/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$4;->this$0:Lcom/facebook/katana/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity$4; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$4;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v1, 0x7f0b002a
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p2, :cond_10
const/4 v1, 0x0
:goto_c
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/facebook/katana/FeedbackActivity$4; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
const/16 v1, 0x8
goto :goto_c
.end method