.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->a()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->s(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$b;->d()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    :cond_35
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->t(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z

    :cond_58
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->u(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->g:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->pause()V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i:Lcom/admarvel/android/ads/AdMarvelVideoActivity$k;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$h;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z

    :cond_84
    return-void
.end method
