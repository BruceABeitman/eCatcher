.class public Lcom/pinguo/camera360/cloud/cropImage/UriTexture;
.super Lcom/pinguo/camera360/cloud/cropImage/Texture;
.source "UriTexture.java"
.field private static final CONNECTION_TIMEOUT:I = 0x4e20
.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams; = null
.field public static final SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry; = null
.field private static final TAG:Ljava/lang/String; = "UriTexture"
.field public static final URI_CACHE:Ljava/lang/String; = null
.field private static final USER_AGENT:Ljava/lang/String; = "Cooliris-ImageDownload"
.method static constructor <clinit>()V
.registers 7
const/16 v3, 0x4e20
const-string/jumbo v2, "hires-image-cache"
invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->URI_CACHE:Ljava/lang/String;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const/4 v2, 0x0
invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const/4 v2, 0x1
invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
const-string/jumbo v2, "Cooliris-ImageDownload"
invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;
new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
sput-object v2, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;
sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->SCHEME_REGISTRY:Lorg/apache/http/conn/scheme/SchemeRegistry;
new-instance v3, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v4, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v5
const/16 v6, 0x50
invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v1, Ljava/io/File;
sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->URI_CACHE:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v2
if-nez v2, :cond_56
const-string/jumbo v2, "UriTexture"
const-string/jumbo v3, "Create dir failed!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_56
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/Texture;-><init>()V
return-void
.end method
.method private static computeSampleSize(Ljava/io/InputStream;II)I
.registers 7
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v3, 0x1
iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v3, 0x0
invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
mul-int v0, p1, p2
invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I
move-result v3
div-int/lit8 v1, v3, 0x2
invoke-static {v2, v1, v0}, Lcom/pinguo/camera360/cloud/cropImage/Utils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
move-result v3
return v3
.end method
.method public static createFilePathFromCrc64(JI)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->URI_CACHE:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".cache"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static createFromCache(JI)Landroid/graphics/Bitmap;
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
:try_start_2
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v4, 0x0
iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v4, 0x1
iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z
const-wide/16 v4, 0x0
cmp-long v4, p0, v4
if-eqz v4, :cond_1f
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;
move-result-object v2
invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_21
move-result-object v0
:cond_1f
move-object v4, v0
:goto_20
return-object v4
:catch_21
move-exception v1
const/4 v4, 0x0
goto :goto_20
.end method
.method public static createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
.registers 16
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v7, 0x1
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
const-wide/16 v2, 0x0
const/4 v0, 0x0
const-string/jumbo v7, "content"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_24
move-wide v2, p4
:goto_1c
invoke-static {v2, v3, p2}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFromCache(JI)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_29
move-object v7, v0
:goto_23
return-object v7
:cond_24
invoke-static {p1}, Lcom/pinguo/camera360/cloud/cropImage/Utils;->crc64Long(Ljava/lang/String;)J
move-result-wide v2
goto :goto_1c
:cond_29
const-string/jumbo v7, "content"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_bb
const-string/jumbo v7, "file://"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_bb
const/4 v4, 0x0
:goto_3c
const/4 v1, 0x0
const-string/jumbo v7, "content"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_4f
const-string/jumbo v7, "file"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_bd
:cond_4f
new-instance v1, Ljava/io/BufferedInputStream;
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v7
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v7
const/16 v8, 0x4000
invoke-direct {v1, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:goto_62
if-eqz v1, :cond_c2
invoke-static {v1, p2, p3}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->computeSampleSize(Ljava/io/InputStream;II)I
move-result v7
iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v1, 0x0
const-string/jumbo v7, "content"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_7d
const-string/jumbo v7, "file"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_c5
:cond_7d
new-instance v1, Ljava/io/BufferedInputStream;
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v7
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v7
const/16 v8, 0x4000
invoke-direct {v1, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:goto_90
if-eqz v1, :cond_a8
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
const/4 v7, 0x0
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
new-instance v6, Lcom/pinguo/camera360/cloud/cropImage/UriTexture$1;
const-string/jumbo v7, "BitmapTimeoutThread"
invoke-direct {v6, v7, v5}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture$1;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
invoke-virtual {v6}, Ljava/lang/Thread;->start()V
const/4 v7, 0x0
invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:cond_a8
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v8, 0x1
if-gt v7, v8, :cond_af
if-nez v4, :cond_b8
:cond_af
if-eqz v0, :cond_b8
iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
div-int v7, p2, v7
invoke-static {v2, v3, v0, v7}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->writeToCache(JLandroid/graphics/Bitmap;I)V
:cond_b8
move-object v7, v0
goto/16 :goto_23
:cond_bb
const/4 v4, 0x1
goto :goto_3c
:cond_bd
invoke-static {p1, p6}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;
move-result-object v1
goto :goto_62
:cond_c2
const/4 v7, 0x0
goto/16 :goto_23
:cond_c5
invoke-static {p1, p6}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;
move-result-object v1
goto :goto_90
.end method
.method private static createInputStreamFromRemoteUrl(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)Ljava/io/BufferedInputStream;
.registers 14
const/4 v8, 0x0
const/4 v1, 0x0
if-nez p1, :cond_3d
:try_start_4
new-instance v9, Ljava/net/URI;
invoke-direct {v9, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v7
invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/URLConnection;->connect(Ljava/net/URLConnection;)V
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_22
move-result-object v1
:cond_18
:goto_18
if-eqz v1, :cond_21
new-instance v8, Ljava/io/BufferedInputStream;
const/16 v9, 0x1000
invoke-direct {v8, v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:goto_21
:cond_21
return-object v8
:catch_22
move-exception v2
const-string/jumbo v9, "UriTexture"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Request failed: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_21
:cond_3d
new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;
sget-object v9, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;
invoke-direct {v5, p1, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
new-instance v6, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
const/4 v4, 0x0
:try_start_4a
invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v4
invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
if-eqz v3, :cond_18
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
:try_end_57
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_59
move-result-object v1
goto :goto_18
:catch_59
move-exception v2
goto :goto_21
.end method
.method public static invalidateCache(JI)V
.registers 8
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_20
const-wide/16 v3, 0x0
cmp-long v3, p0, v3
if-eqz v3, :cond_20
:try_start_c
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v3
if-nez v3, :cond_20
const-string/jumbo v3, "UriTexture"
const-string/jumbo v4, "Delete file failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_20
:try_end_20
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21
:goto_20
return-void
:catch_21
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_20
.end method
.method public static isCached(JI)Z
.registers 10
const/4 v4, 0x0
const-wide/16 v5, 0x0
cmp-long v5, p0, v5
if-eqz v5, :cond_17
invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
:try_start_c
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_29
.catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_1d
if-eqz v3, :cond_16
:try_start_13
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_16
:try_end_16
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_18
:goto_16
const/4 v4, 0x1
:goto_17
:cond_17
return v4
:catch_18
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_16
:catch_1d
move-exception v0
if-eqz v2, :cond_17
:try_start_20
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_23
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
goto :goto_17
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_17
:catchall_29
move-exception v4
if-eqz v2, :cond_2f
:try_start_2c
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_2f
.catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
:goto_2f
:cond_2f
throw v4
:catch_30
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2f
.end method
.method public static writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 16
invoke-static {p1}, Lcom/pinguo/camera360/cloud/cropImage/Utils;->crc64Long(Ljava/lang/String;)J
move-result-wide v4
const/16 v0, 0x400
invoke-static {v4, v5, v0}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->isCached(JI)Z
move-result v0
if-nez v0, :cond_1a
const/16 v2, 0x400
const/16 v3, 0x400
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
:try_start_13
invoke-static/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
:try_end_16
.catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_5c
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_5f
.catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_16} :catch_62
move-result-object v7
invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
:cond_1a
const/16 v0, 0x400
invoke-static {v4, v5, v0}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;
move-result-object v10
:try_start_20
new-instance v9, Ljava/io/File;
invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_69
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "/"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_65
const-string/jumbo v0, ""
:goto_40
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
new-instance v11, Ljava/io/File;
invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v11}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V
:goto_5b
return-object v12
:catch_5c
move-exception v8
const/4 v12, 0x0
goto :goto_5b
:catch_5f
move-exception v8
const/4 v12, 0x0
goto :goto_5b
:catch_62
move-exception v8
const/4 v12, 0x0
goto :goto_5b
:cond_65
const-string/jumbo v0, "/"
:try_end_68
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_68} :catch_6b
goto :goto_40
:cond_69
const/4 v12, 0x0
goto :goto_5b
:catch_6b
move-exception v8
const/4 v12, 0x0
goto :goto_5b
.end method
.method public static writeToCache(JLandroid/graphics/Bitmap;I)V
.registers 14
invoke-static {p0, p1, p3}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFilePathFromCrc64(JI)Ljava/lang/String;
move-result-object v4
if-eqz p2, :cond_3a
if-eqz v4, :cond_3a
const-wide/16 v8, 0x0
cmp-long v8, p0, v8
if-eqz v8, :cond_3a
const/4 v6, 0x0
const/4 v0, 0x0
:try_start_10
new-instance v5, Ljava/io/File;
invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
move-result v8
if-nez v8, :cond_24
const-string/jumbo v8, "UriTexture"
const-string/jumbo v9, "Create new file failed!"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_24
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_29
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_3b
:try_start_29
new-instance v1, Ljava/io/BufferedOutputStream;
const/16 v8, 0x4000
invoke-direct {v1, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_end_30
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_54
:try_start_30
sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v9, 0x50
invoke-virtual {p2, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_57
:cond_3a
:goto_3a
return-void
:catch_3b
move-exception v2
:goto_3c
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
if-eqz v6, :cond_44
:try_start_41
invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
:try_end_44
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4f
:goto_44
:cond_44
if-eqz v0, :cond_3a
:try_start_46
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
:try_end_49
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a
goto :goto_3a
:catch_4a
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3a
:catch_4f
move-exception v3
invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
goto :goto_44
:catch_54
move-exception v2
move-object v6, v7
goto :goto_3c
:catch_57
move-exception v2
move-object v0, v1
move-object v6, v7
goto :goto_3c
.end method
.method public finalize()V
.registers 1
return-void
.end method
.method public load(Landroid/view/View;)Landroid/graphics/Bitmap;
.registers 3
const/4 v0, 0x0
return-object v0
.end method