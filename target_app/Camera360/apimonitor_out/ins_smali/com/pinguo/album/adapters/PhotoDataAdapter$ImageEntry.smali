.class  Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.field public failToLoad:Z
.field public fullImage:Landroid/graphics/BitmapRegionDecoder;
.field public fullImageTask:Lcom/pinguo/album/Future;
.field public requestedFullImage:J
.field public requestedScreenNail:J
.field public screenNail:Lcom/pinguo/album/opengles/ScreenNail;
.field public screenNailTask:Lcom/pinguo/album/Future;
.method private constructor <init>()V
.registers 3
const-wide/16 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J
iput-wide v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->requestedFullImage:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;->failToLoad:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$ImageEntry;-><init>()V
return-void
.end method