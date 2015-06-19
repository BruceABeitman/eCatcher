.class public Lcom/pinguo/album/data/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"
.field public static final CAMERA_BUCKET_ID:I = 0x0
.field private static final CAMERA_PATHS:[Lcom/pinguo/album/data/MediaPath; = null
.field public static final CLOUD_BUCKET_ID:I = 0x0
.field public static final DOWNLOAD:Ljava/lang/String; = "download"
.field public static final DOWNLOAD_BUCKET_ID:I = 0x0
.field public static final IMPORTED:Ljava/lang/String; = "Imported"
.field public static final IMPORTED_BUCKET_ID:I
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
.field public static final SNAPSHOT_BUCKET_ID:I
.method static constructor <clinit>()V
.registers 5
new-instance v0, Lcom/pinguo/album/data/MediaSetUtils$NameComparator;
invoke-direct {v0}, Lcom/pinguo/album/data/MediaSetUtils$NameComparator;-><init>()V
sput-object v0, Lcom/pinguo/album/data/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/DCIM/Camera"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBucketId(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "download"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBucketId(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/pinguo/album/data/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "Imported"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBucketId(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/pinguo/album/data/MediaSetUtils;->IMPORTED_BUCKET_ID:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/Pictures/Screenshots"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBucketId(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/pinguo/album/data/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I
const-string/jumbo v0, "/pinguo/cloud/album"
invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->getBucketId(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/pinguo/album/data/MediaSetUtils;->CLOUD_BUCKET_ID:I
const/4 v0, 0x3
new-array v0, v0, [Lcom/pinguo/album/data/MediaPath;
const/4 v1, 0x0
new-instance v2, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v3, "/local/all/"
sget v4, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v3, "/local/image/"
sget v4, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
const/4 v1, 0x2
new-instance v2, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v3, "/local/video/"
sget v4, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_BUCKET_ID:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_PATHS:[Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isCameraSource(Lcom/pinguo/album/data/MediaPath;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
sget-object v2, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_PATHS:[Lcom/pinguo/album/data/MediaPath;
aget-object v2, v2, v0
if-eq v2, p0, :cond_16
sget-object v2, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_PATHS:[Lcom/pinguo/album/data/MediaPath;
aget-object v2, v2, v1
if-eq v2, p0, :cond_16
sget-object v2, Lcom/pinguo/album/data/MediaSetUtils;->CAMERA_PATHS:[Lcom/pinguo/album/data/MediaPath;
const/4 v3, 0x2
aget-object v2, v2, v3
if-eq v2, p0, :cond_16
:goto_15
return v0
:cond_16
move v0, v1
goto :goto_15
.end method