.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$a;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V

    :cond_36
    return-void
.end method
