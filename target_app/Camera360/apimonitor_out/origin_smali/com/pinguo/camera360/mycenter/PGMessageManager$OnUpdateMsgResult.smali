.class public abstract Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PGMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/mycenter/PGMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnUpdateMsgResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/pinguo/camera360/mycenter/PGMessage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method
