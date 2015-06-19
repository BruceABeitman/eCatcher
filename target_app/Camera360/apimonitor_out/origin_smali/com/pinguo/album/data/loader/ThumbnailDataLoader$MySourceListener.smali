.class Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "ThumbnailDataLoader.java"

# interfaces
.implements Lcom/pinguo/album/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/loader/ThumbnailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;-><init>(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$0(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$MySourceListener;->this$0:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    #getter for: Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->mReloadTask:Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->access$0(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader$ReloadTask;->notifyDirty()V

    :cond_11
    return-void
.end method
