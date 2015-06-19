.class Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->storepicture(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;

.field final synthetic val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$z;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$callback:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelActivity$z;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$y;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$11;->val$callback:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelActivity$y;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method
