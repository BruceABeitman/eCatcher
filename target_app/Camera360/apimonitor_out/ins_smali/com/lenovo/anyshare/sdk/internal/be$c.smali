.class public abstract Lcom/lenovo/anyshare/sdk/internal/be$c;
.super Ljava/lang/Object;
.source "TaskHelper.java"
.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;
.field protected a:Z
.field protected b:Ljava/util/concurrent/Future;
.field protected c:Z
.field protected d:Ljava/lang/Exception;
.field private f:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->a:Z
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->b:Ljava/util/concurrent/Future;
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->c:Z
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->d:Ljava/lang/Exception;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a()Z
move-result v0
if-eqz v0, :cond_1b
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be$c;->e:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->f:I
:cond_1b
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/be$c;)I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->f:I
return v0
.end method
.method public abstract a()V
.end method
.method public abstract a(Ljava/lang/Exception;)V
.end method
.method public final a(Z)V
.registers 4
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->c:Z
:try_start_3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->b:Ljava/util/concurrent/Future;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->b:Ljava/util/concurrent/Future;
invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z
:cond_c
:goto_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_14
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be;->a()Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
return-void
:catch_14
move-exception v0
goto :goto_c
.end method
.method protected final b()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/be$c;->c:Z
return v0
.end method