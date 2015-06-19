.class  Lcom/fsck/k9/activity/MessageView$3;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$3;->this$0:Lcom/fsck/k9/activity/MessageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/MessageView$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$3;->this$0:Lcom/fsck/k9/activity/MessageView;
#calls: Lcom/fsck/k9/activity/MessageView;->onFlag()V
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1200(Lcom/fsck/k9/activity/MessageView;)V
const-string v1, " - Lcom/fsck/k9/activity/MessageView$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method