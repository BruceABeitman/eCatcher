.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-direct {v1, v2, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/widget/ImageView;)V
sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v0, 0x1
new-array v3, v0, [Ljava/lang/String;
const/4 v4, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$d;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_32
return-void
.end method