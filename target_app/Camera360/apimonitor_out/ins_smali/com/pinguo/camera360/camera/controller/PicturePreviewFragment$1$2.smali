.class  Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;
.super Ljava/lang/Object;
.source "PicturePreviewFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;
.field private final synthetic val$info:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private final synthetic val$saveSucceed:Z
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;->val$info:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-boolean p3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;->val$saveSucceed:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
new-instance v0, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;->val$info:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$2;->val$saveSucceed:Z
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method