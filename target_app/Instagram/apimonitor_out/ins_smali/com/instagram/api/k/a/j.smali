.class final Lcom/instagram/api/k/a/j;
.super Lcom/instagram/api/k/a/i;
.source "IgSettersResponse.java"
.field private a:Ljava/util/List;
.field private b:Ljava/util/List;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Z
.field private g:Ljava/lang/String;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/api/k/a/i;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/api/k/a/j;->f:Z
return-void
.end method
.method final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->c:Ljava/lang/String;
return-void
.end method
.method final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->a:Ljava/util/List;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/api/k/a/j;->f:Z
return-void
.end method
.method final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->e:Ljava/lang/String;
return-void
.end method
.method final b(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->b:Ljava/util/List;
return-void
.end method
.method final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->g:Ljava/lang/String;
return-void
.end method
.method final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/k/a/j;->d:Ljava/lang/String;
return-void
.end method
.method public final f()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->a:Ljava/util/List;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->e:Ljava/lang/String;
return-object v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/api/k/a/j;->f:Z
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->g:Ljava/lang/String;
return-object v0
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->c:Ljava/lang/String;
return-object v0
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->d:Ljava/lang/String;
return-object v0
.end method
.method public final l()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/api/k/a/j;->b:Ljava/util/List;
return-object v0
.end method