.class public interface abstract Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pinguo/album/data/loader/DataLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onPhotoChanged(ILcom/pinguo/album/data/MediaPath;)V
.end method
