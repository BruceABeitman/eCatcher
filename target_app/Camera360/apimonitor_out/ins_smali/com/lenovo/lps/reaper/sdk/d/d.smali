.class public final Lcom/lenovo/lps/reaper/sdk/d/d;
.super Ljava/lang/Object;
.field private a:Lcom/lenovo/lps/reaper/sdk/b/e;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/b/e;->a()V
:cond_9
return-void
.end method
.method public final a(ILcom/lenovo/lps/reaper/sdk/b/f;)V
.registers 4
if-lez p1, :cond_7
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/b/e;->a(ILcom/lenovo/lps/reaper/sdk/b/f;)Z
:cond_7
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/api/a;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/e;->a(Lcom/lenovo/lps/reaper/sdk/api/a;)V
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/b/e;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/e;->a(Lcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
.registers 3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/e;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
move-result v0
return v0
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/d;->a:Lcom/lenovo/lps/reaper/sdk/b/e;
invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/b/e;->b()Z
move-result v0
return v0
.end method