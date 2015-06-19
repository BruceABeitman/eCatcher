.class  Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;
.super Landroid/os/Handler;
.source "PGEditAutoHideTextView.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public dispatchMessage(Landroid/os/Message;)V
.registers 6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->mLastSetRateTime:J
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x258
cmp-long v0, v0, v2
if-lez v0, :cond_16
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->hideForAlpha()V
:cond_16
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->autoHideHandler:Landroid/os/Handler;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method