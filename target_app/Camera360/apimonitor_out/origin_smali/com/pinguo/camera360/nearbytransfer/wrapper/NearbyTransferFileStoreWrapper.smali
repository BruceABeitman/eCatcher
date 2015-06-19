.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferFileStoreWrapper;
.super Ljava/lang/Object;
.source "NearbyTransferFileStoreWrapper.java"

# interfaces
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTempFileName(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStorage()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalTempDir()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteItemDir(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteItemDir(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteItemThumbnail(Ljava/lang/String;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailDir()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
