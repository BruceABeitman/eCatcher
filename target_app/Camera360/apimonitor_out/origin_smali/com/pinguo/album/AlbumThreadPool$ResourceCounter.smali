.class Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
.super Ljava/lang/Object;
.source "AlbumThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/AlbumThreadPool;
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

    iput p1, p0, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;->value:I

    return-void
.end method
