.class public interface abstract Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore;
.super Ljava/lang/Object;
.source "INearbyTransferFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;
    }
.end annotation


# virtual methods
.method public abstract createTempFileName(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalStorage()Ljava/io/File;
.end method

.method public abstract getExternalTempDir()Ljava/io/File;
.end method

.method public abstract getRemoteItemDir(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getRemoteItemDir(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getRemoteItemThumbnail(Ljava/lang/String;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferFileStore$NearbyTransferFileType;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getThumbnailDir()Ljava/io/File;
.end method
