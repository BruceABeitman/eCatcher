.class  Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"
.field private mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;-><init>()V
return-void
.end method
.method public clean()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
return-void
.end method
.method public pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
if-eqz v0, :cond_8
iget-object v1, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mNext:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
:cond_8
return-object v0
.end method
.method public push(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
if-nez v1, :cond_c
const/4 v0, 0x1
:goto_5
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
iput-object v1, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mNext:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->mHead:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
return v0
:cond_c
const/4 v0, 0x0
goto :goto_5
.end method