.class  Lcom/lenovo/anyshare/sdk/internal/be$b;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "TaskHelper.java"
.field private static a:Z
.field private static b:Landroid/util/SparseArray;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
if-eqz v0, :cond_11
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
:cond_11
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
return-void
.end method
.method static synthetic a()Z
.registers 1
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
return v0
.end method
.method public a(Ljava/lang/Runnable;JILjava/lang/String;)Ljava/util/concurrent/Future;
.registers 7
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
if-eqz v0, :cond_b
if-eqz p5, :cond_b
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, p4, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_b
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-super {p0, p1, p2, p3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
move-result-object v0
return-object v0
.end method
.method protected a(I)V
.registers 6
sget-boolean v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
if-nez v1, :cond_5
:goto_4
return-void
:cond_5
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v1, "TaskHelper"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "before execute: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method protected a(ILjava/lang/Throwable;)V
.registers 7
sget-boolean v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->a:Z
if-nez v1, :cond_5
:goto_4
return-void
:cond_5
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v1, "TaskHelper"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "before execute: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_5d
const-string/jumbo v1, "TaskHelper"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "after execute: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", e = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_57
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$b;->b:Landroid/util/SparseArray;
invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
goto :goto_4
:cond_5d
const-string/jumbo v1, "TaskHelper"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "after execute: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_57
.end method