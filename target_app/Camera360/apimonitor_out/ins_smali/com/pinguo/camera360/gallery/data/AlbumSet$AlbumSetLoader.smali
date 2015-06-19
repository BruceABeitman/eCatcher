.class  Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;
.super Ljava/lang/Object;
.source "AlbumSet.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;-><init>(Lcom/pinguo/camera360/gallery/data/AlbumSet;)V
return-void
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/AlbumSet$AlbumSetLoader;->this$0:Lcom/pinguo/camera360/gallery/data/AlbumSet;
#calls: Lcom/pinguo/camera360/gallery/data/AlbumSet;->getSubMediaSetList()Ljava/util/ArrayList;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/data/AlbumSet;->access$0(Lcom/pinguo/camera360/gallery/data/AlbumSet;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method