.class abstract Lcom/millennialmedia/android/cf;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field protected b:Ljava/lang/ref/WeakReference;
.field protected c:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/cf;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/cf;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.end method
.method  a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
.registers 5
new-instance v0, Ljava/util/concurrent/FutureTask;
invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
:try_start_8
invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cg;
:goto_e
:try_end_e
.catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_e} :catch_f
.catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_e} :catch_19
return-object v0
:catch_f
move-exception v0
sget-object v1, Lcom/millennialmedia/android/cf;->a:Ljava/lang/String;
const-string v2, "Future interrupted"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_17
const/4 v0, 0x0
goto :goto_e
:catch_19
move-exception v0
sget-object v1, Lcom/millennialmedia/android/cf;->a:Ljava/lang/String;
const-string v2, "Future execution problem: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_17
.end method
.method  a(Lcom/millennialmedia/android/cq;)V
.registers 3
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/cf;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method  b(Ljava/lang/String;)J
.registers 4
if-eqz p1, :cond_8
invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
float-to-long v0, v0
:goto_7
return-wide v0
:cond_8
const-wide/16 v0, -0x4
goto :goto_7
.end method
.method  c(Landroid/content/Context;)V
.registers 3
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/cf;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method  d()Lcom/millennialmedia/android/g;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/cf;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_1f
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;
move-result-object v0
instance-of v1, v0, Lcom/millennialmedia/android/MMActivity;
if-eqz v1, :cond_1f
check-cast v0, Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->i()Lcom/millennialmedia/android/bz;
move-result-object v0
instance-of v1, v0, Lcom/millennialmedia/android/g;
if-eqz v1, :cond_1f
check-cast v0, Lcom/millennialmedia/android/g;
:goto_1e
return-object v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method