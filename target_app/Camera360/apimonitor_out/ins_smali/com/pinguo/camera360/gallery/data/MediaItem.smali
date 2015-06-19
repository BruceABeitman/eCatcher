.class public abstract Lcom/pinguo/camera360/gallery/data/MediaItem;
.super Lcom/pinguo/camera360/gallery/data/MediaObject;
.source "MediaItem.java"
.field private static final BYTESBUFFER_SIZE:I = 0x1e000
.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4
.field public static final CACHED_IMAGE_QUALITY:I = 0x5f
.field public static final IMAGE_ERROR:I = -0x1
.field public static final IMAGE_READY:I = 0x0
.field public static final IMAGE_WAIT:I = 0x1
.field public static final INVALID_LATLNG:D = 0.0
.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0x78
.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"
.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280
.field public static final TYPE_MICROTHUMBNAIL:I = 0x2
.field public static final TYPE_THUMBNAIL:I = 0x1
.field private static final sMicroThumbBufferPool:Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
.field private static final sMicroThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
.field private static final sThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
.method static constructor <clinit>()V
.registers 6
const/16 v5, 0x78
const/4 v4, 0x4
const/4 v3, 0x0
new-instance v0, Lcom/pinguo/camera360/gallery/data/BitmapPool;
const/16 v1, 0x10
const-string/jumbo v2, "microThumbPool"
invoke-direct {v0, v5, v5, v1, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(IIILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sMicroThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
new-instance v0, Lcom/pinguo/camera360/gallery/data/BitmapPool;
const-string/jumbo v1, "thumbPool"
invoke-direct {v0, v4, v1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z
if-nez v0, :cond_23
sget-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sMicroThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->setEnabled(Z)V
:cond_23
sget-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->setEnabled(Z)V
new-instance v0, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
const v1, 0x1e000
invoke-direct {v0, v4, v1}, Lcom/pinguo/camera360/gallery/data/BytesBufferPool;-><init>(II)V
sput-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sMicroThumbBufferPool:Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/MediaObject;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
return-void
.end method
.method public static getBytesBufferPool()Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sMicroThumbBufferPool:Lcom/pinguo/camera360/gallery/data/BytesBufferPool;
return-object v0
.end method
.method public static getMicroThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sMicroThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-object v0
.end method
.method public static getTargetSize(I)I
.registers 3
packed-switch p0, :pswitch_data_12
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "should only request thumb/microthumb from cache"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_c
const/16 v0, 0x280
:goto_e
return v0
:pswitch_f
const/16 v0, 0x78
goto :goto_e
:pswitch_data_12
.packed-switch 0x1
:pswitch_c
:pswitch_f
.end packed-switch
.end method
.method public static getThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/data/MediaItem;->sThumbPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-object v0
.end method
.method public abstract IsPhotoWitchSound()Z
.end method
.method public abstract existOnStorage()Z
.end method
.method public getDateInMs()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getFullImageRotation()I
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getRotation()I
move-result v0
return v0
.end method
.method public abstract getHeight()I
.end method
.method public getLatLong([D)V
.registers 5
const-wide/16 v1, 0x0
const/4 v0, 0x0
aput-wide v1, p1, v0
const/4 v0, 0x1
aput-wide v1, p1, v0
return-void
.end method
.method public abstract getMimeType()Ljava/lang/String;
.end method
.method public getName()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRotation()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getSize()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getTags()[Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getWidth()I
.end method
.method public abstract isVideo()Z
.end method
.method public abstract requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.end method
.method public abstract requestLargeImage()Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.end method