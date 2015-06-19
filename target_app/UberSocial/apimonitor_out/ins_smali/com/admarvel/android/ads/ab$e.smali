.class  Lcom/admarvel/android/ads/ab$e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/ab;
.field private b:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/ads/ab;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/ab$e;->a:Lcom/admarvel/android/ads/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/admarvel/android/ads/ab$e;->b:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 4
new-instance v0, Lcom/admarvel/android/ads/ab$d;
iget-object v1, p0, Lcom/admarvel/android/ads/ab$e;->a:Lcom/admarvel/android/ads/ab;
iget-object v2, p0, Lcom/admarvel/android/ads/ab$e;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab$d;-><init>(Lcom/admarvel/android/ads/ab;Ljava/lang/String;)V
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/ab$d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method