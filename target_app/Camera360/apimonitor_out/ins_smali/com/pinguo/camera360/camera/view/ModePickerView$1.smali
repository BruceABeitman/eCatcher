.class  Lcom/pinguo/camera360/camera/view/ModePickerView$1;
.super Ljava/lang/Object;
.source "ModePickerView.java"
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/ModePickerView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$1;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPageChanged(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$1;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
#getter for: Lcom/pinguo/camera360/camera/view/ModePickerView;->mIndicator:Lcom/pinguo/camera360/camera/view/ModePickerIndicator;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->access$0(Lcom/pinguo/camera360/camera/view/ModePickerView;)Lcom/pinguo/camera360/camera/view/ModePickerIndicator;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/view/ModePickerIndicator;->setCurrentItem(I)V
return-void
.end method