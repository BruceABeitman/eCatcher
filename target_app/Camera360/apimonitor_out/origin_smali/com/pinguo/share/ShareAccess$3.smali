.class Lcom/pinguo/share/ShareAccess$3;
.super Ljava/lang/Object;
.source "ShareAccess.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ShareAccess;->cloudImageList2CloudShareInfo(Landroid/content/Context;Ljava/util/List;)Lcom/pinguo/share/CloudShareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    return v0
.end method
