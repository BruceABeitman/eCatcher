.class public abstract Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;
.super Ljava/lang/Object;
.source "PGUploadModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mNextPGUploadModule:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule",
            "<TV;>;"
        }
    .end annotation
.end field

.field public mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract put(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public putNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;->mNextPGUploadModule:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;->mNextPGUploadModule:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;->putNext(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public setNext(Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule",
            "<TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;->mNextPGUploadModule:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;

    return-void
.end method

.method public setUploadCallback(Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;->mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

    return-void
.end method
