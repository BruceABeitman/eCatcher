.class public Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/utils/SparseArrayBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field nextInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;

.field nextInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;

.field prevInBucket:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;

.field prevInPool:Lcom/pinguo/album/data/utils/SparseArrayBitmapPool$Node;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
