.class  Lcom/glympse/android/controls/GTimePickerFragment$3;
.super Ljava/lang/Object;
.source "GTimePickerFragment.java"
.implements Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
.field final synthetic this$0:Lcom/glympse/android/controls/GTimePickerFragment;
.method constructor <init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment$3;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onUserActionComplete(Lcom/glympse/android/controls/GTimerView;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$3;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$700(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$3;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onUserActionCompleteListener:Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$700(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/glympse/android/controls/GTimerView$OnUserActionCompleteListener;->onUserActionComplete(Lcom/glympse/android/controls/GTimerView;)V
:cond_11
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$3;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_dismissOnUserAction:Z
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$800(Lcom/glympse/android/controls/GTimePickerFragment;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$3;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->dismiss()V
:cond_1e
return-void
.end method