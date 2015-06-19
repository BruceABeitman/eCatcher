.class public interface abstract Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
.super Ljava/lang/Object;
.source "MetaDataDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/download/MetaDataDownLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetaDataLoadingListener"
.end annotation


# virtual methods
.method public abstract OnDownloadFailed(ILjava/lang/String;)V
.end method

.method public abstract OnDownloadStart()V
.end method

.method public abstract onDownloadFinished(Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;)V
.end method
