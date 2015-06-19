.class Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;->createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;

.field final synthetic val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic val$allday:Ljava/lang/String;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$endDate:Ljava/lang/String;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$reminderoffset:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$date:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$description:Ljava/lang/String;

    iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$location:Ljava/lang/String;

    iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$allday:Ljava/lang/String;

    iput-object p9, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$endDate:Ljava/lang/String;

    iput p10, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$reminderoffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$f;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$description:Ljava/lang/String;

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$location:Ljava/lang/String;

    iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$allday:Ljava/lang/String;

    iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$endDate:Ljava/lang/String;

    iget v9, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$reminderoffset:I

    invoke-direct/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelActivity$f;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$e;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$description:Ljava/lang/String;

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$location:Ljava/lang/String;

    iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$allday:Ljava/lang/String;

    iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$endDate:Ljava/lang/String;

    iget v9, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$5;->val$reminderoffset:I

    invoke-direct/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelActivity$e;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method
