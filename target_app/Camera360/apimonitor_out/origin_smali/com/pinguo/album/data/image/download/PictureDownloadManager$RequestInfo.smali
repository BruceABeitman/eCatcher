.class public Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;
.super Ljava/lang/Object;
.source "PictureDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/image/download/PictureDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field public saveFileName:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;->saveFileName:Ljava/lang/String;

    return-void
.end method
