.class final Lcom/spotify/mobile/android/spotlets/browse/util/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

.field private final b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/util/c;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->c:Ljava/lang/String;

    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_8
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_2b

    const/4 v1, 0x1

    :try_start_16
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_47

    move-result-object v1

    :try_start_24
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

    invoke-static {v2, v3, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a(Lcom/spotify/mobile/android/spotlets/browse/util/c;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_4c

    move-object v0, v1

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2e
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_33
    const-string v2, "Exception occurred on loading image from url: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a

    :catch_47
    move-exception v1

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_2e

    :catch_4c
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2e
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/util/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void
.end method
