.class public interface abstract Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
.super Ljava/lang/Object;
.source "DeleteMediaListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/fragment/DeleteMediaListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteMediaProgressListener"
.end annotation


# virtual methods
.method public abstract getDeletePaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/data/MediaPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onConfirmDialogDismissed(Z)V
.end method
