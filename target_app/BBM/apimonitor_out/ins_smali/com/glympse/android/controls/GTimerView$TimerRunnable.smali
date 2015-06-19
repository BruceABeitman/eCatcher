.class  Lcom/glympse/android/controls/GTimerView$TimerRunnable;
.super Ljava/lang/Object;
.source "GTimerView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/glympse/android/controls/GTimerView;
.method private constructor <init>(Lcom/glympse/android/controls/GTimerView;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/controls/GTimerView$TimerRunnable;->this$0:Lcom/glympse/android/controls/GTimerView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/controls/GTimerView;Lcom/glympse/android/controls/GTimerView$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/controls/GTimerView$TimerRunnable;-><init>(Lcom/glympse/android/controls/GTimerView;)V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView$TimerRunnable;->this$0:Lcom/glympse/android/controls/GTimerView;
#calls: Lcom/glympse/android/controls/GTimerView;->timerAction()V
invoke-static {v0}, Lcom/glympse/android/controls/GTimerView;->access$700(Lcom/glympse/android/controls/GTimerView;)V
iget-object v0, p0, Lcom/glympse/android/controls/GTimerView$TimerRunnable;->this$0:Lcom/glympse/android/controls/GTimerView;
const-wide/16 v1, 0x3e8
invoke-virtual {v0, p0, v1, v2}, Lcom/glympse/android/controls/GTimerView;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method