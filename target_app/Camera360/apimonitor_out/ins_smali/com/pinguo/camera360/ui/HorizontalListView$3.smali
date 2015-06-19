.class  Lcom/pinguo/camera360/ui/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
.method constructor <init>(Lcom/pinguo/camera360/ui/HorizontalListView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/HorizontalListView$3;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$3;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->requestLayout()V
return-void
.end method