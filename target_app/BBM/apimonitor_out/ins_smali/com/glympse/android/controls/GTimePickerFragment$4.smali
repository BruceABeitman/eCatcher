.class  Lcom/glympse/android/controls/GTimePickerFragment$4;
.super Ljava/lang/Object;
.source "GTimePickerFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/glympse/android/controls/GTimePickerFragment;
.method constructor <init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/glympse/android/controls/GTimePickerFragment$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
const/4 v1, 0x1
#setter for: Lcom/glympse/android/controls/GTimePickerFragment;->_confirmed:Z
invoke-static {v0, v1}, Lcom/glympse/android/controls/GTimePickerFragment;->access$902(Lcom/glympse/android/controls/GTimePickerFragment;Z)Z
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$1000(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onConfirmedListener:Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$1000(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-interface {v0, v1}, Lcom/glympse/android/controls/GTimePickerFragment$OnConfirmedListener;->onConfirmed(Lcom/glympse/android/controls/GTimePickerFragment;)V
:cond_19
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnConfirm:Z
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$1100(Lcom/glympse/android/controls/GTimePickerFragment;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$4;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->dismiss()V
:cond_26
const-string v1, " - Lcom/glympse/android/controls/GTimePickerFragment$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method