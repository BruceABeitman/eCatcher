.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x0

    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
