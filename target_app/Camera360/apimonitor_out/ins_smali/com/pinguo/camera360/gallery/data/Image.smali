.class public Lcom/pinguo/camera360/gallery/data/Image;
.super Lcom/pinguo/camera360/gallery/data/LocalMediaItem;
.source "Image.java"
.field public static final INDEX_BUCKET_ID:I = 0xa
.field public static final INDEX_CAPTION:I = 0x1
.field public static final INDEX_DATA:I = 0x8
.field public static final INDEX_DATE_ADDED:I = 0x6
.field public static final INDEX_DATE_MODIFIED:I = 0x7
.field public static final INDEX_DATE_TAKEN:I = 0x5
.field public static final INDEX_ID:I = 0x0
.field public static final INDEX_LATITUDE:I = 0x3
.field public static final INDEX_LONGITUDE:I = 0x4
.field public static final INDEX_MIME_TYPE:I = 0x2
.field public static final INDEX_ORIENTATION:I = 0x9
.field public static final INDEX_SIZE:I = 0xb
.field public static final PROJECTION:[Ljava/lang/String; = null
.field public static final TAG:Ljava/lang/String; = "Image"
.field private final mApplication:Lcom/pinguo/camera360/PgCameraApplication;
.field public rotation:I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "mime_type"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "latitude"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "longitude"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "datetaken"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "date_added"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "date_modified"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "_data"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string/jumbo v2, "orientation"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string/jumbo v2, "bucket_id"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string/jumbo v2, "_size"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/gallery/data/Image;->PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;)V
.registers 12
invoke-static {}, Lcom/pinguo/camera360/gallery/data/Image;->nextVersionNumber()J
move-result-wide v1
invoke-direct {p0, p2, v1, v2}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/pinguo/camera360/gallery/data/Image;->PROJECTION:[Ljava/lang/String;
const-string/jumbo v3, "datetaken=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-nez v6, :cond_43
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "cannot get cursor for: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_43
:cond_43
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_50
invoke-direct {p0, v6}, Lcom/pinguo/camera360/gallery/data/Image;->loadFromCursor(Landroid/database/Cursor;)V
:try_end_4c
.catchall {:try_start_43 .. :try_end_4c} :catchall_68
invoke-interface {v6}, Landroid/database/Cursor;->close()V
return-void
:try_start_50
:cond_50
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "cannot find data for: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_68
.catchall {:try_start_50 .. :try_end_68} :catchall_68
:catchall_68
move-exception v1
invoke-interface {v6}, Landroid/database/Cursor;->close()V
throw v1
.end method
.method public constructor <init>(Lcom/pinguo/camera360/PgCameraApplication;Lcom/pinguo/camera360/gallery/data/Path;Landroid/database/Cursor;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/gallery/data/Image;->nextVersionNumber()J
move-result-wide v0
invoke-direct {p0, p2, v0, v1}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-direct {p0, p3}, Lcom/pinguo/camera360/gallery/data/Image;->loadFromCursor(Landroid/database/Cursor;)V
return-void
.end method
.method private static getExifOrientation(I)Ljava/lang/String;
.registers 4
sparse-switch p0, :sswitch_data_32
new-instance v0, Ljava/lang/AssertionError;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "invalid: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:sswitch_19
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:sswitch_1f
const/4 v0, 0x6
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_1e
:sswitch_25
const/4 v0, 0x3
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_1e
:sswitch_2b
const/16 v0, 0x8
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_1e
:sswitch_data_32
.sparse-switch
0x0 -> :sswitch_19
0x5a -> :sswitch_1f
0xb4 -> :sswitch_25
0x10e -> :sswitch_2b
.end sparse-switch
.end method
.method private loadFromCursor(Landroid/database/Cursor;)V
.registers 4
const/4 v0, 0x0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
const/4 v0, 0x1
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->caption:Ljava/lang/String;
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->latitude:D
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->longitude:D
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateTakenInMs:J
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
const/16 v0, 0xa
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->bucketId:I
const/16 v0, 0xb
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->fileSize:J
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
return-void
.end method
.method private updateGpuMakingPhoto(Ljava/lang/String;)V
.registers 10
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v2}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "_data"
invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v3, "datetaken = ? "
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
iget-wide v6, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateTakenInMs:J
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method
.method public IsPhotoWitchSound()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public delete(Z)V
.registers 9
invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1f
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_1f
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_1f
if-eqz p1, :cond_3b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v3, "_id=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
iget v6, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_3b
return-void
.end method
.method public existOnStorage()Z
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
return v0
.end method
.method public getContentUri()Landroid/net/Uri;
.registers 4
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
return-object v1
.end method
.method public getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;
.registers 4
invoke-super {p0}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;
move-result-object v0
const/4 v1, 0x7
iget v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->extractExifInfo(Lcom/pinguo/camera360/gallery/data/MediaDetails;Ljava/lang/String;)V
return-object v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->height:I
return v0
.end method
.method public getMediaType()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public getRotation()I
.registers 3
:goto_0
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
if-ltz v1, :cond_24
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
rem-int/lit16 v1, v1, 0x168
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
rem-int/lit8 v1, v1, 0x5a
if-eqz v1, :cond_21
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
rem-int/lit8 v0, v1, 0x5a
const/16 v1, 0x2d
if-le v0, v1, :cond_2b
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
add-int/lit8 v1, v1, 0x5a
sub-int/2addr v1, v0
rem-int/lit16 v1, v1, 0x168
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
:cond_21
:goto_21
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
return v1
:cond_24
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
add-int/lit16 v1, v1, 0x168
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
goto :goto_0
:cond_2b
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
sub-int/2addr v1, v0
rem-int/lit16 v1, v1, 0x168
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
goto :goto_21
.end method
.method public getSupportedOperations()I
.registers 6
const/16 v0, 0x62d
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xa
if-lt v1, v2, :cond_12
or-int/lit8 v0, v0, 0x40
:cond_12
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
or-int/lit8 v0, v0, 0x2
:cond_1c
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->latitude:D
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/data/Image;->longitude:D
invoke-static {v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->isValidLocation(DD)Z
move-result v1
if-eqz v1, :cond_28
or-int/lit8 v0, v0, 0x10
:cond_28
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->width:I
return v0
.end method
.method public isVideo()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.registers 7
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_12
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
:cond_12
new-instance v1, Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v1, v2, v3, p1, v4}, Lcom/pinguo/camera360/gallery/data/Image$LocalImageRequest;-><init>(Lcom/pinguo/camera360/PgCameraApplication;Ljava/lang/String;ILjava/lang/String;)V
return-object v1
.end method
.method public requestLargeImage()Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.registers 4
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xa
if-lt v1, v2, :cond_20
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_18
iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
:cond_18
new-instance v1, Lcom/pinguo/camera360/gallery/data/Image$LocalLargeImageRequest;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/data/Image$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V
:goto_1f
return-object v1
:cond_20
const/4 v1, 0x0
goto :goto_1f
.end method
.method public rotate(I)V
.registers 12
invoke-static {}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->assertNotInRenderThread()V
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
iget v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
add-int/2addr v4, p1
rem-int/lit16 v2, v4, 0x168
if-gez v2, :cond_11
add-int/lit16 v2, v2, 0x168
:cond_11
iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
const-string/jumbo v5, "image/jpeg"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_49
:try_start_1c
new-instance v1, Landroid/media/ExifInterface;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "Orientation"
invoke-static {v2}, Lcom/pinguo/camera360/gallery/data/Image;->getExifOrientation(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
:goto_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_6e
new-instance v4, Ljava/io/File;
iget-object v5, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v4
iput-wide v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->fileSize:J
const-string/jumbo v4, "_size"
iget-wide v5, p0, Lcom/pinguo/camera360/gallery/data/Image;->fileSize:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_49
const-string/jumbo v4, "orientation"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/data/Image;->mApplication:Lcom/pinguo/camera360/PgCameraApplication;
invoke-virtual {v4}, Lcom/pinguo/camera360/PgCameraApplication;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v6, "_id=?"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
iget v9, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
:catch_6e
move-exception v0
const-string/jumbo v4, "Image"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "cannot set exif data: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_30
.end method
.method protected updateFromCursor(Landroid/database/Cursor;)Z
.registers 7
new-instance v0, Lcom/pinguo/camera360/gallery/util/UpdateHelper;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;-><init>()V
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
const/4 v2, 0x0
invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(II)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->id:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->caption:Ljava/lang/String;
const/4 v2, 0x1
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->caption:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
const/4 v2, 0x2
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->mimeType:Ljava/lang/String;
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->latitude:D
const/4 v3, 0x3
invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(DD)D
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->latitude:D
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->longitude:D
const/4 v3, 0x4
invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(DD)D
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->longitude:D
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateTakenInMs:J
const/4 v3, 0x5
invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(JJ)J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateTakenInMs:J
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateAddedInSec:J
const/4 v3, 0x6
invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(JJ)J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateAddedInSec:J
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateModifiedInSec:J
const/4 v3, 0x7
invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(JJ)J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->dateModifiedInSec:J
iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
const/16 v2, 0x8
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->filePath:Ljava/lang/String;
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
const/16 v2, 0x9
invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(II)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->rotation:I
iget v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->bucketId:I
const/16 v2, 0xa
invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(II)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->bucketId:I
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->fileSize:J
const/16 v3, 0xb
invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->update(JJ)J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/data/Image;->fileSize:J
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/UpdateHelper;->isUpdated()Z
move-result v1
return v1
.end method