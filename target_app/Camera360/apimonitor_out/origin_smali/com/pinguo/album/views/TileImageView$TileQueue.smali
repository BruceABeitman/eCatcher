.class Lcom/pinguo/album/views/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/pinguo/album/views/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/TileImageView$TileQueue;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/views/TileImageView$TileQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    return-void
.end method

.method public pop()Lcom/pinguo/album/views/TileImageView$Tile;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mNext:Lcom/pinguo/album/views/TileImageView$Tile;

    iput-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    :cond_8
    return-object v0
.end method

.method public push(Lcom/pinguo/album/views/TileImageView$Tile;)Z
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    iput-object v1, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mNext:Lcom/pinguo/album/views/TileImageView$Tile;

    iput-object p1, p0, Lcom/pinguo/album/views/TileImageView$TileQueue;->mHead:Lcom/pinguo/album/views/TileImageView$Tile;

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method
