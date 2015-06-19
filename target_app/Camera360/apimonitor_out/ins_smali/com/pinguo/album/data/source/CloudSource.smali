.class public Lcom/pinguo/album/data/source/CloudSource;
.super Lcom/pinguo/album/data/MediaSource;
.source "CloudSource.java"
.field private static final CLOUD_ALL_ALBUM:I = 0x7
.field private static final CLOUD_ALL_ALBUMSET:I = 0x6
.field private static final CLOUD_IMAGE_ALBUM:I = 0x2
.field private static final CLOUD_IMAGE_ALBUMSET:I = 0x0
.field private static final CLOUD_IMAGE_ITEM:I = 0x4
.field private static final CLOUD_VIDEO_ALBUM:I = 0x3
.field private static final CLOUD_VIDEO_ALBUMSET:I = 0x1
.field private static final CLOUD_VIDEO_ITEM:I = 0x5
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"
.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"
.field private static final NO_MATCH:I = -0x1
.field private static final TAG:Ljava/lang/String; = "CloudSource"
.field private mApplication:Lcom/pinguo/album/PGAlbumApp;
.field private mClient:Landroid/content/ContentProviderClient;
.field private mMatcher:Lcom/pinguo/album/data/PathMatcher;
.field private final mUriMatcher:Landroid/content/UriMatcher;
.method public constructor <init>(Lcom/pinguo/album/PGAlbumApp;)V
.registers 10
const/4 v7, 0x7
const/4 v6, 0x5
const/4 v5, 0x4
const/4 v4, 0x3
const/4 v3, 0x2
const-string/jumbo v0, "cloud"
invoke-direct {p0, v0}, Lcom/pinguo/album/data/MediaSource;-><init>(Ljava/lang/String;)V
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
iput-object p1, p0, Lcom/pinguo/album/data/source/CloudSource;->mApplication:Lcom/pinguo/album/PGAlbumApp;
new-instance v0, Lcom/pinguo/album/data/PathMatcher;
invoke-direct {v0}, Lcom/pinguo/album/data/PathMatcher;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/image"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/video"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/all"
const/4 v2, 0x6
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/image/*"
invoke-virtual {v0, v1, v3}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/video/*"
invoke-virtual {v0, v1, v4}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/all/*"
invoke-virtual {v0, v1, v7}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/image/item/*"
invoke-virtual {v0, v1, v5}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
const-string/jumbo v1, "/cloud/video/item/*"
invoke-virtual {v0, v1, v6}, Lcom/pinguo/album/data/PathMatcher;->add(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "pg_album"
const-string/jumbo v2, "pg_cloud/images/#"
invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "pg_album"
const-string/jumbo v2, "pg_cloud/video/#"
invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "pg_album"
const-string/jumbo v2, "pg_cloud/images"
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "pg_album"
const-string/jumbo v2, "pg_cloud/videos"
invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
const-string/jumbo v1, "pg_album"
const-string/jumbo v2, "pg_cloud/file"
invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
.end method
.method private getAlbumPath(Landroid/net/Uri;I)Lcom/pinguo/album/data/MediaPath;
.registers 10
const-string/jumbo v4, "mediaTypes"
invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4, p2}, Lcom/pinguo/album/data/source/CloudSource;->getMediaType(Ljava/lang/String;I)I
move-result v3
const-string/jumbo v4, "bucketId"
invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
:try_start_13
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_27
move-result v2
packed-switch v3, :pswitch_data_5a
:pswitch_1a
new-instance v4, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v5, "/cloud/all"
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
return-object v4
:catch_27
move-exception v1
const-string/jumbo v4, "CloudSource"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "invalid bucket id: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x0
goto :goto_26
:pswitch_40
new-instance v4, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v5, "/cloud/image"
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:pswitch_4d
new-instance v4, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v5, "/cloud/video"
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:pswitch_data_5a
.packed-switch 0x2
:pswitch_40
:pswitch_1a
:pswitch_4d
.end packed-switch
.end method
.method private static getMediaType(Ljava/lang/String;I)I
.registers 7
if-nez p0, :cond_3
:goto_2
:cond_2
return p1
:try_start_3
:cond_3
invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_6
.catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_d
move-result v1
and-int/lit8 v2, v1, 0x6
if-eqz v2, :cond_2
move p1, v1
goto :goto_2
:catch_d
move-exception v0
const-string/jumbo v2, "CloudSource"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "invalid type: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2
.end method
.method public createMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
.registers 7
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mApplication:Lcom/pinguo/album/PGAlbumApp;
const-string/jumbo v1, "CloudSource"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " createMediaObject prefix:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " : "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/album/data/PathMatcher;->match(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " type:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/album/data/PathMatcher;->match(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/album/data/source/CloudSource;->mMatcher:Lcom/pinguo/album/data/PathMatcher;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/album/data/PathMatcher;->match(Ljava/lang/String;)I
move-result v1
packed-switch v1, :pswitch_data_84
:pswitch_53
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "bad path: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_69
new-instance v1, Lcom/pinguo/album/data/source/CloudAlbum;
const/4 v2, 0x1
invoke-direct {v1, p1, v0, v2}, Lcom/pinguo/album/data/source/CloudAlbum;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Z)V
:goto_6f
return-object v1
:pswitch_70
new-instance v1, Lcom/pinguo/album/data/source/CloudAlbum;
const/4 v2, 0x0
invoke-direct {v1, p1, v0, v2}, Lcom/pinguo/album/data/source/CloudAlbum;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Z)V
goto :goto_6f
:pswitch_77
new-instance v1, Lcom/pinguo/album/data/image/CloudImage;
iget-object v2, p0, Lcom/pinguo/album/data/source/CloudSource;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaPath;->getIdentity()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, p1, v2, v3}, Lcom/pinguo/album/data/image/CloudImage;-><init>(Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/PGAlbumApp;Ljava/lang/String;)V
goto :goto_6f
nop
:pswitch_data_84
.packed-switch 0x0
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_70
:pswitch_77
:pswitch_53
:pswitch_69
.end packed-switch
.end method
.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pinguo/album/data/MediaPath;
.registers 10
const-wide/16 v5, 0x0
const/4 v4, 0x0
:try_start_3
iget-object v3, p0, Lcom/pinguo/album/data/source/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v3
packed-switch v3, :pswitch_data_6a
:cond_c
:goto_c
:pswitch_c
return-object v4
:pswitch_d
invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
move-result-wide v1
cmp-long v3, v1, v5
if-ltz v3, :cond_23
new-instance v3, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v5, "/local/image/item"
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v5, v6}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_21
move-object v4, v3
goto :goto_c
:cond_23
move-object v3, v4
goto :goto_21
:pswitch_25
invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
move-result-wide v1
cmp-long v3, v1, v5
if-ltz v3, :cond_c
new-instance v3, Lcom/pinguo/album/data/MediaPath;
const-string/jumbo v5, "/local/video/item"
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v5, v6}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object v4, v3
goto :goto_c
:pswitch_3b
const/4 v3, 0x2
invoke-direct {p0, p1, v3}, Lcom/pinguo/album/data/source/CloudSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/pinguo/album/data/MediaPath;
move-result-object v4
goto :goto_c
:pswitch_41
const/4 v3, 0x4
invoke-direct {p0, p1, v3}, Lcom/pinguo/album/data/source/CloudSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/pinguo/album/data/MediaPath;
move-result-object v4
goto :goto_c
:pswitch_47
const/4 v3, 0x6
invoke-direct {p0, p1, v3}, Lcom/pinguo/album/data/source/CloudSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/pinguo/album/data/MediaPath;
:try_end_4b
.catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_4b} :catch_4d
move-result-object v4
goto :goto_c
:catch_4d
move-exception v0
const-string/jumbo v3, "CloudSource"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "uri: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v5, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_c
nop
:pswitch_data_6a
.packed-switch 0x2
:pswitch_3b
:pswitch_41
:pswitch_d
:pswitch_25
:pswitch_c
:pswitch_47
.end packed-switch
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mClient:Landroid/content/ContentProviderClient;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mClient:Landroid/content/ContentProviderClient;
invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mClient:Landroid/content/ContentProviderClient;
:cond_c
return-void
.end method
.method public resume()V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mApplication:Lcom/pinguo/album/PGAlbumApp;
invoke-interface {v0}, Lcom/pinguo/album/PGAlbumApp;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "media"
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/data/source/CloudSource;->mClient:Landroid/content/ContentProviderClient;
return-void
.end method