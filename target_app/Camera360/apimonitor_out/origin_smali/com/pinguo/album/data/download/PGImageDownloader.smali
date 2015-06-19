.class public Lcom/pinguo/album/data/download/PGImageDownloader;
.super Ljava/lang/Object;
.source "PGImageDownloader.java"

# interfaces
.implements Lcom/pinguo/album/data/download/ImageDownloader;


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I = null

.field protected static final ALLOWED_URI_CHARS:Ljava/lang/String; = "@#&=*+-_.,:!?()/~\'%"

.field protected static final BUFFER_SIZE:I = 0x8000

.field protected static final CONTENT_CONTACTS_URI_PREFIX:Ljava/lang/String; = "content://com.android.contacts/"

.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1388

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x4e20

.field private static final ERROR_UNSUPPORTED_SCHEME:Ljava/lang/String; = "Not support!"

.field protected static final MAX_REDIRECT_COUNT:I = 0x5


# instance fields
.field protected final connectTimeout:I

.field protected final context:Landroid/content/Context;

.field protected final readTimeout:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme()[I
    .registers 3

    sget-object v0, Lcom/pinguo/album/data/download/PGImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->values()[Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_5a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->CONTENT:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_58

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_56

    :goto_27
    :try_start_27
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_54

    :goto_30
    :try_start_30
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTP:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_52

    :goto_39
    :try_start_39
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->HTTPS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50

    :goto_42
    :try_start_42
    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_4e

    :goto_4b
    sput-object v0, Lcom/pinguo/album/data/download/PGImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme:[I

    goto :goto_4

    :catch_4e
    move-exception v1

    goto :goto_4b

    :catch_50
    move-exception v1

    goto :goto_42

    :catch_52
    move-exception v1

    goto :goto_39

    :catch_54
    move-exception v1

    goto :goto_30

    :catch_56
    move-exception v1

    goto :goto_27

    :catch_58
    move-exception v1

    goto :goto_1e

    :catch_5a
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->context:Landroid/content/Context;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->connectTimeout:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->readTimeout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->context:Landroid/content/Context;

    iput p2, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->connectTimeout:I

    iput p3, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->readTimeout:I

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->connectTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object v0
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/album/data/download/PGImageDownloader;->$SWITCH_TABLE$com$pinguo$album$data$download$ImageDownloader$Scheme()[I

    move-result-object v0

    invoke-static {p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    :goto_15
    return-object v0

    :pswitch_16
    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15

    :pswitch_1b
    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15

    :pswitch_20
    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15

    :pswitch_25
    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15

    :pswitch_2a
    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
    .end packed-switch
.end method

.method protected getStreamFromAssets(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->ASSETS:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected getStreamFromContent(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "content://com.android.contacts/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    :goto_17
    return-object v2

    :cond_18
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_17
.end method

.method protected getStreamFromDrawable(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 10

    sget-object v5, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v5, p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/pinguo/album/data/download/PGImageDownloader;->context:Landroid/content/Context;

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->FILE:Lcom/pinguo/album/data/download/ImageDownloader$Scheme;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/data/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pinguo/album/data/download/ContentInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/pinguo/album/data/download/ContentInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v1
.end method

.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    const/4 v4, 0x5

    if-lt v3, v4, :cond_27

    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_35

    move-result-object v2

    new-instance v4, Lcom/pinguo/album/data/download/ContentInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    const v6, 0x8000

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/pinguo/album/data/download/ContentInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v4

    :cond_27
    const-string/jumbo v4, "Location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/pinguo/album/data/download/PGImageDownloader;->createConnection(Ljava/lang/String;Ljava/lang/Object;)Ljava/net/HttpURLConnection;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_35
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/album/data/download/IoUtils;->readAndCloseStream(Ljava/io/InputStream;)V

    throw v1
.end method

.method protected getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not support!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
