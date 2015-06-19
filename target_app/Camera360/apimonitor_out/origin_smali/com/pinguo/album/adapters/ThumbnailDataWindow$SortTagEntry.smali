.class public Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
.super Ljava/lang/Object;
.source "ThumbnailDataWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortTagEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;

.field public content:Lcom/pinguo/album/opengles/Texture;

.field public tagLoader:Lcom/pinguo/album/data/utils/BitmapLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
