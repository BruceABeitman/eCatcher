.class public interface abstract Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/util/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadProgress"
.end annotation


# virtual methods
.method public abstract downloadFail()V
.end method

.method public abstract downloadProgress(F)V
.end method

.method public abstract downloadSucess()V
.end method
