.class Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->mReloadTask:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->access$0(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    return-void
.end method
