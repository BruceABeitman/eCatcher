.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    sget v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->o(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_31

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Z)V

    :cond_31
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$7;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->p(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    return-void
.end method
