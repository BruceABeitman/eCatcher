.class  Lkankan/wheel/widget/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"
.field final synthetic this$0:Lkankan/wheel/widget/WheelView;
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
.registers 2
iput-object p1, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V
return-void
.end method
.method public onInvalidated()V
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/WheelView$2;->this$0:Lkankan/wheel/widget/WheelView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V
return-void
.end method