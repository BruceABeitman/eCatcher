.class Lcom/pinguo/album/adapters/ThumbnailDataWindow$1;
.super Lcom/pinguo/album/SynchronizedHandler;
.source "ThumbnailDataWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/adapters/ThumbnailDataWindow;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/data/loader/ThumbnailDataLoader;ILcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;


# direct methods
.method constructor <init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;Lcom/pinguo/album/views/GLController;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$1;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;

    invoke-direct {p0, p2}, Lcom/pinguo/album/SynchronizedHandler;-><init>(Lcom/pinguo/album/views/GLController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->updateEntry()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;

    invoke-virtual {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->updateEntry()V

    goto :goto_b
.end method
