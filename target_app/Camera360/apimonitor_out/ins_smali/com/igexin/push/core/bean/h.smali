.class public Lcom/igexin/push/core/bean/h;
.super Lcom/igexin/push/core/bean/BaseAction;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Z
.field private e:Z
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Z
.field private l:Z
.field private m:I
.field private n:I
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V
iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->c:Z
iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->d:Z
iput-boolean v0, p0, Lcom/igexin/push/core/bean/h;->e:Z
iput-object v1, p0, Lcom/igexin/push/core/bean/h;->f:Ljava/lang/String;
iput-object v1, p0, Lcom/igexin/push/core/bean/h;->g:Ljava/lang/String;
iput-object v1, p0, Lcom/igexin/push/core/bean/h;->h:Ljava/lang/String;
iput-object v1, p0, Lcom/igexin/push/core/bean/h;->i:Ljava/lang/String;
iput-object v1, p0, Lcom/igexin/push/core/bean/h;->j:Ljava/lang/String;
iput-boolean v2, p0, Lcom/igexin/push/core/bean/h;->k:Z
iput-boolean v2, p0, Lcom/igexin/push/core/bean/h;->l:Z
iput v0, p0, Lcom/igexin/push/core/bean/h;->m:I
iput v0, p0, Lcom/igexin/push/core/bean/h;->n:I
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/igexin/push/core/bean/h;->m:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->a:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->c:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/igexin/push/core/bean/h;->n:I
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->b:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->d:Z
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->f:Ljava/lang/String;
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->e:Z
return-void
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->c:Z
return v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->g:Ljava/lang/String;
return-void
.end method
.method public d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->k:Z
return-void
.end method
.method public d()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->d:Z
return v0
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->h:Ljava/lang/String;
return-void
.end method
.method public e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/h;->l:Z
return-void
.end method
.method public e()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->e:Z
return v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->f:Ljava/lang/String;
if-nez v0, :cond_8
const-string/jumbo v0, ""
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->f:Ljava/lang/String;
goto :goto_7
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->i:Ljava/lang/String;
return-void
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->g:Ljava/lang/String;
return-object v0
.end method
.method public g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/h;->j:Ljava/lang/String;
return-void
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->h:Ljava/lang/String;
return-object v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->i:Ljava/lang/String;
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/h;->j:Ljava/lang/String;
return-object v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->k:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/push/core/bean/h;->l:Z
return v0
.end method
.method public m()I
.registers 2
iget v0, p0, Lcom/igexin/push/core/bean/h;->m:I
return v0
.end method
.method public n()I
.registers 2
iget v0, p0, Lcom/igexin/push/core/bean/h;->n:I
return v0
.end method