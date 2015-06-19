.class final Lcom/mato/sdk/b/f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final synthetic a:Lcom/mato/sdk/b/d;
.method constructor <init>(Lcom/mato/sdk/b/d;)V
.registers 2
iput-object p1, p0, Lcom/mato/sdk/b/f;->a:Lcom/mato/sdk/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
:try_start_0
invoke-static {}, Lcom/mato/sdk/a/b$b;->b()Z
move-result v0
if-nez v0, :cond_a
invoke-static {}, Lcom/mato/sdk/b/e$a;->b()V
:goto_9
:cond_9
return-void
:cond_a
invoke-static {}, Lcom/mato/sdk/a/b$f;->c()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_21
invoke-static {}, Lcom/mato/sdk/b/e;->d()I
move-result v0
invoke-static {}, Lcom/mato/sdk/a/b$f;->c()I
move-result v1
if-lt v0, v1, :cond_21
invoke-static {}, Lcom/mato/sdk/b/e$a;->b()V
goto :goto_9
:catch_1f
move-exception v0
goto :goto_9
:cond_21
invoke-static {}, Lcom/mato/sdk/a/b$e;->b()I
move-result v0
if-gtz v0, :cond_2b
invoke-static {}, Lcom/mato/sdk/b/e$a;->b()V
goto :goto_9
:cond_2b
invoke-static {}, Lcom/mato/sdk/utils/c;->c()V
invoke-static {v0}, Lcom/mato/sdk/utils/c;->a(I)Z
move-result v1
if-eqz v1, :cond_9
invoke-static {}, Lcom/mato/sdk/utils/c;->d()[B
move-result-object v1
if-eqz v1, :cond_9
invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;
move-result-object v2
iget-object v3, p0, Lcom/mato/sdk/b/f;->a:Lcom/mato/sdk/b/d;
invoke-static {}, Lcom/mato/sdk/b/e;->e()Z
move-result v4
invoke-static {v2, v3, v1, v4}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/e;Lcom/mato/sdk/b/d;[BZ)V
invoke-static {}, Lcom/mato/sdk/utils/c;->a()V
const/4 v1, 0x0
invoke-static {v1}, Lcom/mato/sdk/b/e;->a(Z)V
invoke-static {}, Lcom/mato/sdk/b/e;->d()I
move-result v1
add-int/2addr v0, v1
invoke-static {v0}, Lcom/mato/sdk/b/e;->a(I)V
:try_end_56
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_56} :catch_1f
goto :goto_9
.end method