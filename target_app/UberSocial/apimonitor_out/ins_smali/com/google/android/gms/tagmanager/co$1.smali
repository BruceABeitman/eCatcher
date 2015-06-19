.class  Lcom/google/android/gms/tagmanager/co$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/cq;
.field final synthetic a:Lcom/google/android/gms/tagmanager/co;
.method constructor <init>(Lcom/google/android/gms/tagmanager/co;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/co$1;->a:Lcom/google/android/gms/tagmanager/co;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/util/concurrent/ScheduledExecutorService;
.registers 2
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v0
return-object v0
.end method