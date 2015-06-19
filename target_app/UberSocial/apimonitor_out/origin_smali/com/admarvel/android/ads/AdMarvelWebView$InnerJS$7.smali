.class Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
    .registers 4

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;->val$callback:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    #getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7$1;

    invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
