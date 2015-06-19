.class  Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;
.super Landroid/os/Handler;
.source "PGEditFirstBackTipView.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public dispatchMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->setVisibility(I)V
return-void
.end method