.class Lcom/admarvel/android/ads/ad$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/ad$d;-><init>(Lcom/admarvel/android/ads/ad;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/widget/LinearLayout$LayoutParams;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/ad;

.field final synthetic b:Lcom/admarvel/android/ads/ad$d;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/ad$d;Lcom/admarvel/android/ads/ad;)V
    .registers 3

    iput-object p1, p0, Lcom/admarvel/android/ads/ad$d$1;->b:Lcom/admarvel/android/ads/ad$d;

    iput-object p2, p0, Lcom/admarvel/android/ads/ad$d$1;->a:Lcom/admarvel/android/ads/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/ad$d$1;->b:Lcom/admarvel/android/ads/ad$d;

    iget-object v0, v0, Lcom/admarvel/android/ads/ad$d;->f:Lcom/admarvel/android/ads/ad;

    invoke-static {v0, p1}, Lcom/admarvel/android/ads/ad;->a(Lcom/admarvel/android/ads/ad;Landroid/view/View;)V

    return-void
.end method
