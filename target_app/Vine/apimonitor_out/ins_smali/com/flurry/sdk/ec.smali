.class public Lcom/flurry/sdk/ec;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/flurry/sdk/ec;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/flurry/sdk/ec;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public a()Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ec;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
return-object v0
.end method