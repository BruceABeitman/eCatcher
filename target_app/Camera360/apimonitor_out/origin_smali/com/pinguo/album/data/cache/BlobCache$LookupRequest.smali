.class public Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
.super Ljava/lang/Object;
.source "BlobCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/cache/BlobCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupRequest"
.end annotation


# instance fields
.field public buffer:[B

.field public key:J

.field public length:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
