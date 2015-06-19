.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    sget v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->q(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->e:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$9;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->onUserInteraction()V

    :cond_37
    const/4 v0, 0x0

    return v0
.end method
