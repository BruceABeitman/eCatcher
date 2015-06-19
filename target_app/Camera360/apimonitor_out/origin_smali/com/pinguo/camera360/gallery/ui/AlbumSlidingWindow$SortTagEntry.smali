.class public Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortTagEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field public content:Lcom/pinguo/camera360/gallery/ui/Texture;

.field public tagLoader:Lcom/pinguo/camera360/gallery/ui/BitmapLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
