.class Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceCounter"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;->value:I

    return-void
.end method
