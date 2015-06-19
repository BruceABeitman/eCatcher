.class public interface abstract Lcom/lenovo/channel/base/IRemoteFileStore;
.super Ljava/lang/Object;
.source "IRemoteFileStore.java"


# virtual methods
.method public abstract createTempFileName(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalStorage()Ljava/io/File;
.end method

.method public abstract getExternalTempDir()Ljava/io/File;
.end method

.method public abstract getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getRemoteItemThumbnail(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getThumbnailDir()Ljava/io/File;
.end method
