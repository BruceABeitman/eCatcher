.class public final Lcom/d/a/b/d/a;
.super Ljava/lang/Object;
.source "BaseImageDownloader.java"

# interfaces
.implements Lcom/d/a/b/d/c;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:I

.field protected final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/d/a;->a:Landroid/content/Context;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/d/a/b/d/a;->b:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/d/a/b/d/a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4

    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/d/a/b/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/d/a/b/d/a;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 8

    const v4, 0x8000

    const/4 v1, 0x0

    sget-object v0, Lcom/d/a/b/d/b;->a:[I

    invoke-static {p1}, Lcom/d/a/b/d/d;->a(Ljava/lang/String;)Lcom/d/a/b/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/d/d;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_ac

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    invoke-direct {p0, p1}, Lcom/d/a/b/d/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_28
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x3

    if-ne v2, v3, :cond_41

    const/4 v2, 0x5

    if-ge v1, v2, :cond_41

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/d/a/b/d/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_41
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :goto_4b
    return-object v0

    :pswitch_4c
    sget-object v0, Lcom/d/a/b/d/d;->c:Lcom/d/a/b/d/d;

    invoke-virtual {v0, p1}, Lcom/d/a/b/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_4b

    :pswitch_5d
    iget-object v0, p0, Lcom/d/a/b/d/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4b

    :pswitch_6c
    sget-object v0, Lcom/d/a/b/d/d;->e:Lcom/d/a/b/d/d;

    invoke-virtual {v0, p1}, Lcom/d/a/b/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/b/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4b

    :pswitch_7d
    sget-object v0, Lcom/d/a/b/d/d;->f:Lcom/d/a/b/d/d;

    invoke-virtual {v0, p1}, Lcom/d/a/b/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/d/a/b/d/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_4b

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_4c
        :pswitch_5d
        :pswitch_6c
        :pswitch_7d
    .end packed-switch
.end method
