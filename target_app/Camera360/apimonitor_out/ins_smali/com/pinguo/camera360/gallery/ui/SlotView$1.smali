.class  Lcom/pinguo/camera360/gallery/ui/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;
.field private final synthetic val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;->onUserInteractionEnd()V
return-void
.end method