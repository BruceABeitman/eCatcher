.class  Lcom/glympse/android/controls/GTimePickerFragment$1;
.super Ljava/lang/Object;
.source "GTimePickerFragment.java"
.implements Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
.field final synthetic this$0:Lcom/glympse/android/controls/GTimePickerFragment;
.method constructor <init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDurationChanged(Lcom/glympse/android/controls/GTimerView;I)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$000(Lcom/glympse/android/controls/GTimePickerFragment;)I
move-result v0
if-ltz v0, :cond_d
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#setter for: Lcom/glympse/android/controls/GTimePickerFragment;->_durationModeValue:I
invoke-static {v0, p2}, Lcom/glympse/android/controls/GTimePickerFragment;->access$002(Lcom/glympse/android/controls/GTimePickerFragment;I)I
:cond_d
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#setter for: Lcom/glympse/android/controls/GTimePickerFragment;->_duration:I
invoke-static {v0, p2}, Lcom/glympse/android/controls/GTimePickerFragment;->access$102(Lcom/glympse/android/controls/GTimePickerFragment;I)I
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$200(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$1;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;
#getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onDurationChangedListener:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$200(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;->onDurationChanged(Lcom/glympse/android/controls/GTimerView;I)V
:cond_23
return-void
.end method