.class public abstract Lcom/pinguo/album/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"
.field public static final CACHE_FLAG_FULL:I = 0x2
.field public static final CACHE_FLAG_NO:I = 0x0
.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1
.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3
.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2
.field public static final CACHE_STATUS_CACHING:I = 0x1
.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0
.field public static final INVALID_DATA_VERSION:J = -0x1L
.field public static final MEDIA_TYPE_ALL:I = 0x6
.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"
.field public static final MEDIA_TYPE_IMAGE:I = 0x2
.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"
.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1
.field public static final MEDIA_TYPE_VIDEO:I = 0x4
.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"
.field public static final SUPPORT_ALL:I = -0x1
.field public static final SUPPORT_CACHE:I = 0x100
.field public static final SUPPORT_CROP:I = 0x8
.field public static final SUPPORT_DELETE:I = 0x1
.field public static final SUPPORT_EDIT:I = 0x200
.field public static final SUPPORT_FULL_IMAGE:I = 0x40
.field public static final SUPPORT_IMPORT:I = 0x800
.field public static final SUPPORT_INFO:I = 0x400
.field public static final SUPPORT_PLAY:I = 0x80
.field public static final SUPPORT_ROTATE:I = 0x2
.field public static final SUPPORT_SETAS:I = 0x20
.field public static final SUPPORT_SHARE:I = 0x4
.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10
.field private static final TAG:Ljava/lang/String; = "MediaObject"
.field protected static sVersionSerial:J
.field protected mDataVersion:J
.field protected final mPath:Lcom/pinguo/album/data/MediaPath;
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x0
sput-wide v0, Lcom/pinguo/album/data/MediaObject;->sVersionSerial:J
return-void
.end method
.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;J)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1, p0}, Lcom/pinguo/album/data/MediaPath;->setObject(Lcom/pinguo/album/data/MediaObject;)V
iput-object p1, p0, Lcom/pinguo/album/data/MediaObject;->mPath:Lcom/pinguo/album/data/MediaPath;
iput-wide p2, p0, Lcom/pinguo/album/data/MediaObject;->mDataVersion:J
return-void
.end method
.method public static getTypeString(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_16
:pswitch_3
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:pswitch_9
const-string/jumbo v0, "image"
:goto_c
return-object v0
:pswitch_d
const-string/jumbo v0, "video"
goto :goto_c
:pswitch_11
const-string/jumbo v0, "all"
goto :goto_c
nop
:pswitch_data_16
.packed-switch 0x2
:pswitch_9
:pswitch_3
:pswitch_d
:pswitch_3
:pswitch_11
.end packed-switch
.end method
.method public static declared-synchronized nextVersionNumber()J
.registers 6
const-class v1, Lcom/pinguo/album/data/MediaObject;
monitor-enter v1
:try_start_3
sget-wide v2, Lcom/pinguo/album/data/MediaObject;->sVersionSerial:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
sput-wide v2, Lcom/pinguo/album/data/MediaObject;->sVersionSerial:J
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_c
monitor-exit v1
return-wide v2
:catchall_c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public Import()Z
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public cache(I)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public delete()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getCacheFlag()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCacheSize()J
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getCacheStatus()I
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getContentUri()Landroid/net/Uri;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getDataVersion()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/album/data/MediaObject;->mDataVersion:J
return-wide v0
.end method
.method public getDetails()Lcom/pinguo/album/data/MediaDetails;
.registers 2
new-instance v0, Lcom/pinguo/album/data/MediaDetails;
invoke-direct {v0}, Lcom/pinguo/album/data/MediaDetails;-><init>()V
return-object v0
.end method
.method public getMediaType()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getPath()Lcom/pinguo/album/data/MediaPath;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/MediaObject;->mPath:Lcom/pinguo/album/data/MediaPath;
return-object v0
.end method
.method public getPlayUri()Landroid/net/Uri;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getSupportedOperations()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public rotate(I)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method