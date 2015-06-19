.class  Lcom/facebook/widget/bg;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/widget/bf;
.field static final synthetic a:Z
.field final synthetic b:Lcom/facebook/widget/be;
.field private final c:Ljava/lang/Runnable;
.field private d:Lcom/facebook/widget/bg;
.field private e:Lcom/facebook/widget/bg;
.field private f:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/widget/be;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/widget/bg;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Lcom/facebook/widget/be;Ljava/lang/Runnable;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/widget/bg;->c:Ljava/lang/Runnable;
return-void
.end method
.method  a(Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
.registers 5
const/4 v0, 0x0
sget-boolean v1, Lcom/facebook/widget/bg;->a:Z
if-nez v1, :cond_f
iget-object v1, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
if-nez v1, :cond_f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f
sget-boolean v1, Lcom/facebook/widget/bg;->a:Z
if-nez v1, :cond_1d
iget-object v1, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
if-nez v1, :cond_1d
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_1d
if-ne p1, p0, :cond_24
iget-object v1, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
if-ne v1, p0, :cond_35
move-object p1, v0
:goto_24
:cond_24
iget-object v1, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iget-object v2, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iput-object v2, v1, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iget-object v1, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iget-object v2, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iput-object v2, v1, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iput-object v0, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iput-object v0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
return-object p1
:cond_35
iget-object p1, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
goto :goto_24
.end method
.method  a(Lcom/facebook/widget/bg;Z)Lcom/facebook/widget/bg;
.registers 5
sget-boolean v0, Lcom/facebook/widget/bg;->a:Z
if-nez v0, :cond_e
iget-object v0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_e
sget-boolean v0, Lcom/facebook/widget/bg;->a:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
if-eqz v0, :cond_1c
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_1c
if-nez p1, :cond_26
iput-object p0, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iput-object p0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
move-object v0, p0
:goto_23
if-eqz p2, :cond_36
:goto_25
return-object p0
:cond_26
iput-object p1, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iget-object v0, p1, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iput-object v0, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iget-object v0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iget-object v1, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iput-object p0, v1, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iput-object p0, v0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
move-object v0, p1
goto :goto_23
:cond_36
move-object p0, v0
goto :goto_25
.end method
.method  a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/widget/bg;->f:Z
return-void
.end method
.method public a()Z
.registers 4
iget-object v0, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-static {v0}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/be;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
invoke-virtual {p0}, Lcom/facebook/widget/bg;->b()Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
iget-object v2, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-static {v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;)Lcom/facebook/widget/bg;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
const/4 v0, 0x1
monitor-exit v1
:goto_1e
return v0
:cond_1f
monitor-exit v1
const/4 v0, 0x0
goto :goto_1e
:catchall_22
move-exception v0
monitor-exit v1
:try_end_24
.catchall {:try_start_7 .. :try_end_24} :catchall_22
throw v0
.end method
.method  b(Z)V
.registers 3
sget-boolean v0, Lcom/facebook/widget/bg;->a:Z
if-nez v0, :cond_10
iget-object v0, p0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
iget-object v0, v0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
if-eq v0, p0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
sget-boolean v0, Lcom/facebook/widget/bg;->a:Z
if-nez v0, :cond_20
iget-object v0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
iget-object v0, v0, Lcom/facebook/widget/bg;->e:Lcom/facebook/widget/bg;
if-eq v0, p0, :cond_20
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_20
sget-boolean v0, Lcom/facebook/widget/bg;->a:Z
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/facebook/widget/bg;->b()Z
move-result v0
if-eq v0, p1, :cond_30
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_30
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/bg;->f:Z
return v0
.end method
.method public c()V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-static {v0}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/be;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
invoke-virtual {p0}, Lcom/facebook/widget/bg;->b()Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
iget-object v2, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-static {v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;)Lcom/facebook/widget/bg;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
iget-object v0, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
iget-object v2, p0, Lcom/facebook/widget/bg;->b:Lcom/facebook/widget/be;
invoke-static {v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;)Lcom/facebook/widget/bg;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p0, v2, v3}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;Z)Lcom/facebook/widget/bg;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
:cond_2c
monitor-exit v1
return-void
:catchall_2e
move-exception v0
monitor-exit v1
:try_end_30
.catchall {:try_start_7 .. :try_end_30} :catchall_2e
throw v0
.end method
.method  d()Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/bg;->c:Ljava/lang/Runnable;
return-object v0
.end method
.method  e()Lcom/facebook/widget/bg;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/bg;->d:Lcom/facebook/widget/bg;
return-object v0
.end method