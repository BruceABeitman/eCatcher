.class Lcom/admarvel/android/ads/AdMarvelActivity$q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelActivity$q;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelActivity$q;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$q;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 4

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->c:Lcom/admarvel/android/ads/AdMarvelActivity$q;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-boolean v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->v(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->v(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->v(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3e
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->w(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->w(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_76

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->w(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:AdApp.videoView().setDuration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    const-string v1, "javascript:AdApp.videoView().setCanPlay(true)"

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$q$1;->b:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    const-string v1, "javascript:AdApp.adView().play()"

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_76
.end method
