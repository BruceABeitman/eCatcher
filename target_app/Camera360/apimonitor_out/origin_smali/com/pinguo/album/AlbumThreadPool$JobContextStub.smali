.class Lcom/pinguo/album/AlbumThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "AlbumThreadPool.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/AlbumThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/AlbumThreadPool$JobContextStub;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/AlbumThreadPool$JobContextStub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/pinguo/album/AlbumThreadPool$CancelListener;)V
    .registers 2

    return-void
.end method

.method public setMode(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
