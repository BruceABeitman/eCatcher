.class public Lcom/igexin/push/e/b/b;
.super Lcom/igexin/push/e/b/h;
.field private static a:Lcom/igexin/push/e/b/b;
.method public constructor <init>()V
.registers 3
const-wide/32 v0, 0xea60
invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/h;-><init>(J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/e/b/b;->A:Z
return-void
.end method
.method public static g()Lcom/igexin/push/e/b/b;
.registers 1
sget-object v0, Lcom/igexin/push/e/b/b;->a:Lcom/igexin/push/e/b/b;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/e/b/b;
invoke-direct {v0}, Lcom/igexin/push/e/b/b;-><init>()V
sput-object v0, Lcom/igexin/push/e/b/b;->a:Lcom/igexin/push/e/b/b;
:cond_b
sget-object v0, Lcom/igexin/push/e/b/b;->a:Lcom/igexin/push/e/b/b;
return-object v0
.end method
.method private h()V
.registers 4
const-wide/32 v0, 0x57e40
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/b;->a(JLjava/util/concurrent/TimeUnit;)I
return-void
.end method
.method public a_()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 2
invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V
iget-boolean v0, p0, Lcom/igexin/push/e/b/b;->x:Z
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/igexin/push/e/b/b;->h()V
:cond_a
return-void
.end method
.method protected i()V
.registers 3
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->A()V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
sget v1, Lcom/igexin/push/core/a;->j:I
iput v1, v0, Landroid/os/Message;->what:I
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/core/f;->a(Landroid/os/Message;)Z
return-void
.end method