.class  Lcom/pinguo/album/data/source/LocalAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
.method constructor <init>(Lcom/pinguo/album/data/source/LocalAlbumSet;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$1;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$1;->this$0:Lcom/pinguo/album/data/source/LocalAlbumSet;
invoke-virtual {v0}, Lcom/pinguo/album/data/source/LocalAlbumSet;->notifyContentChanged()V
return-void
.end method