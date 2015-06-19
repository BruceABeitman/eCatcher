.class Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$0(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumDataLoader$MySourceListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->access$0(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_11
    return-void
.end method
