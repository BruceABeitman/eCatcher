.class Lcom/glympse/android/controls/GTimePickerFragment$2;
.super Ljava/lang/Object;
.source "GTimePickerFragment.java"

# interfaces
.implements Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;


# instance fields
.field final synthetic this$0:Lcom/glympse/android/controls/GTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/glympse/android/controls/GTimePickerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpireTimeChanged(Lcom/glympse/android/controls/GTimerView;J)V
    .registers 8

    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
    invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$300(Lcom/glympse/android/controls/GTimePickerFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #setter for: Lcom/glympse/android/controls/GTimePickerFragment;->_modifyModeValue:J
    invoke-static {v0, p2, p3}, Lcom/glympse/android/controls/GTimePickerFragment;->access$302(Lcom/glympse/android/controls/GTimePickerFragment;J)J

    :cond_11
    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #setter for: Lcom/glympse/android/controls/GTimePickerFragment;->_expireTime:J
    invoke-static {v0, p2, p3}, Lcom/glympse/android/controls/GTimePickerFragment;->access$402(Lcom/glympse/android/controls/GTimePickerFragment;J)J

    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #calls: Lcom/glympse/android/controls/GTimePickerFragment;->setExpireTimeText()V
    invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$500(Lcom/glympse/android/controls/GTimePickerFragment;)V

    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
    invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$600(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/glympse/android/controls/GTimePickerFragment$2;->this$0:Lcom/glympse/android/controls/GTimePickerFragment;

    #getter for: Lcom/glympse/android/controls/GTimePickerFragment;->_onExpireTimeChangedListener:Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;
    invoke-static {v0}, Lcom/glympse/android/controls/GTimePickerFragment;->access$600(Lcom/glympse/android/controls/GTimePickerFragment;)Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/glympse/android/controls/GTimerView$OnExpireTimeChangedListener;->onExpireTimeChanged(Lcom/glympse/android/controls/GTimerView;J)V

    :cond_2c
    return-void
.end method
