.class Lcom/admarvel/android/ads/AdMarvelActivity$z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelActivity$z;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity$z;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$z;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$z$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$z$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity$z;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$z$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity$z;

    iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelActivity$z;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity$z;->c:Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_1c

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_11

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
