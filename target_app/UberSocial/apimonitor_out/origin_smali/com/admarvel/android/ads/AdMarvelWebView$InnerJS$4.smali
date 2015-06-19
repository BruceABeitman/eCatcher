.class Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$4;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
