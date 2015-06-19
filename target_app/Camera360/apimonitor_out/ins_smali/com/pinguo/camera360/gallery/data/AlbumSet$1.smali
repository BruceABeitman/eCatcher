.class  Lcom/pinguo/camera360/gallery/data/AlbumSet$1;
.super Ljava/lang/Object;
.source "AlbumSet.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
.method constructor <init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$1;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->notifyContentChanged()V
return-void
.end method