.class  Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;
.super Landroid/os/Handler;
.source "PGEditTiltShiftView.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public dispatchMessage(Landroid/os/Message;)V
.registers 6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x320
cmp-long v0, v0, v2
if-ltz v0, :cond_1c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
const/4 v1, 0x0
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V
:cond_1c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
#calls: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->startHandler()V
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
return-void
.end method