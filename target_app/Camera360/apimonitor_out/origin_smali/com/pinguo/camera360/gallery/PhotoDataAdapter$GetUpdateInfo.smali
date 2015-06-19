.class Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .registers 7

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$6(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$7(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v2

    :goto_d
    if-lt v1, v2, :cond_22

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$8(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)[Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$9(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v5

    rem-int/lit8 v5, v5, 0x20

    aget-object v0, v4, v5

    if-nez v0, :cond_31

    :cond_21
    :goto_21
    return v3

    :cond_22
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mData:[Lcom/pinguo/camera360/gallery/data/MediaItem;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$8(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)[Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v4

    rem-int/lit8 v5, v1, 0x20

    aget-object v4, v4, v5

    if-eqz v4, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_31
    const/4 v3, 0x0

    goto :goto_21
.end method


# virtual methods
.method public call()Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$10(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->version:J

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$9(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentStart:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$6(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$7(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    #getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$11(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;->size:I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/pinguo/camera360/gallery/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
