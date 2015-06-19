.class public Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.super Ljava/lang/Object;
.source "BaseImageDownloader.java"
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.field protected static final ALLOWED_URI_CHARS:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%"
.field protected static final BUFFER_SIZE:I = 0x8000
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1388
.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20
.field private static final ERROR_UNSUPPORTED_SCHEME:Ljava/lang/String; = "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"
.field protected static final MAX_REDIRECT_COUNT:I = 0x5
.field protected final connectTimeout:I
.field protected final context:Landroid/content/Context;
.field protected final readTimeout:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;
const/16 v0, 0x1388
iput v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I
const/16 v0, 0x4e20
iput v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;
iput p2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I
iput p3, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I
return-void
.end method
.method protected createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.registers 5
const-string/jumbo v2, "@#&=*+-_.,:!?()/~\'%"
invoke-static {p1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
iget v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->connectTimeout:I
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
iget v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->readTimeout:I
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
return-object v0
.end method
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 5
sget-object v0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I
invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
move-result-object v1
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2e
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
:goto_13
return-object v0
:pswitch_14
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
goto :goto_13
:pswitch_19
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
goto :goto_13
:pswitch_1e
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
goto :goto_13
:pswitch_23
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
goto :goto_13
:pswitch_28
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
move-result-object v0
goto :goto_13
nop
:pswitch_data_2e
.packed-switch 0x1
:pswitch_14
:pswitch_14
:pswitch_19
:pswitch_1e
:pswitch_23
:pswitch_28
.end packed-switch
.end method
.method protected getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 5
sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
return-object v1
.end method
.method protected getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 6
iget-object v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
return-object v2
.end method
.method protected getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 10
sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v5, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iget-object v5, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->context:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
new-instance v4, Ljava/io/ByteArrayOutputStream;
invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/4 v6, 0x0
invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
new-instance v5, Ljava/io/ByteArrayInputStream;
invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v5
.end method
.method protected getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 7
sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/BufferedInputStream;
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const v3, 0x8000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
return-object v1
.end method
.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 8
invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
move-result-object v0
const/4 v1, 0x0
:goto_5
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v2
div-int/lit8 v2, v2, 0x64
const/4 v3, 0x3
if-ne v2, v3, :cond_1f
const/4 v2, 0x5
if-ge v1, v2, :cond_1f
const-string/jumbo v2, "Location"
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1f
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v3
const v4, 0x8000
invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
return-object v2
.end method
.method protected getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
.registers 7
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v1, "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method