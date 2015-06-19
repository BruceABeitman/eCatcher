.class  Lcom/admarvel/android/ads/AdMarvelView$c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/io/File;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private final g:I
.field private final h:Ljava/lang/String;
.field private final i:Ljava/lang/ref/WeakReference;
.field private final j:I
.field private final k:Ljava/lang/String;
.field private final l:Landroid/os/Handler;
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->b:Ljava/lang/ref/WeakReference;
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->a:Ljava/io/File;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->c:Ljava/util/Map;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->e:Ljava/lang/String;
iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->f:Ljava/lang/String;
iput p7, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->g:I
iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->h:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->i:Ljava/lang/ref/WeakReference;
iput p10, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->j:I
iput-object p11, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->k:Ljava/lang/String;
iput-object p12, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->l:Landroid/os/Handler;
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_90
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->i:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_90
new-instance v1, Lcom/admarvel/android/ads/q;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->a:Ljava/io/File;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-direct {v1, v2, v0}, Lcom/admarvel/android/ads/q;-><init>(Ljava/io/File;Landroid/content/Context;)V
sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/16 v0, 0xc
new-array v3, v0, [Ljava/lang/Object;
const/4 v0, 0x0
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->c:Ljava/util/Map;
aput-object v4, v3, v0
const/4 v0, 0x1
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->d:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x2
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->e:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x3
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->f:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x4
iget v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->g:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x5
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->h:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x6
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->i:Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x7
iget v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->j:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/16 v0, 0x8
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->k:Ljava/lang/String;
aput-object v4, v3, v0
const/16 v0, 0x9
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->l:Landroid/os/Handler;
aput-object v4, v3, v0
const/16 v4, 0xa
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->i:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->b()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
aput-object v0, v3, v4
const/16 v4, 0xb
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$c;->i:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelView;->h(Lcom/admarvel/android/ads/AdMarvelView;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/admarvel/android/ads/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_90
return-void
.end method