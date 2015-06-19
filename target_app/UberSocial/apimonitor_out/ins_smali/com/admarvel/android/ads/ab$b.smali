.class  Lcom/admarvel/android/ads/ab$b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/admarvel/android/ads/ab$1;)V
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/ab$b;-><init>()V
return-void
.end method
.method public run()V
.registers 6
new-instance v1, Lcom/admarvel/android/ads/h;
invoke-direct {v1}, Lcom/admarvel/android/ads/h;-><init>()V
sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v0, 0x1
new-array v3, v0, [Ljava/lang/Object;
const/4 v4, 0x0
const/4 v0, 0x0
check-cast v0, Ljava/lang/Object;
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/admarvel/android/ads/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method