.class  Lcom/admarvel/android/ads/AdMarvelWebView$aj$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$aj;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;
new-instance v1, Ljava/net/URL;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;
iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelWebView$aj;->a:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v1
iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$aj;->c:Ljava/io/InputStream;
:goto_11
:try_end_11
.catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_11} :catch_12
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_1c
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