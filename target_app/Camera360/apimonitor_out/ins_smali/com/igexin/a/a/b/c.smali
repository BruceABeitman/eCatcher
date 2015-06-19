.class public abstract Lcom/igexin/a/a/b/c;
.super Ljava/lang/Object;
.field protected a:Ljava/lang/String;
.field protected b:Lcom/igexin/a/a/b/c;
.field protected c:Lcom/igexin/a/a/b/c;
.field protected d:Z
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/igexin/a/a/b/c;->a:Ljava/lang/String;
iput-boolean p2, p0, Lcom/igexin/a/a/b/c;->d:Z
return-void
.end method
.method public abstract a(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method protected final a(Lcom/igexin/a/a/b/c;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p1, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
iput-object p0, p1, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
iput-object p1, p0, Lcom/igexin/a/a/b/c;->c:Lcom/igexin/a/a/b/c;
iput-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
goto :goto_2
.end method
.method public a(Z)V
.registers 5
iget-boolean v0, p0, Lcom/igexin/a/a/b/c;->d:Z
if-eqz v0, :cond_7
if-nez p1, :cond_7
:cond_6
return-void
:cond_7
:goto_7
iget-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
iget-object v0, v0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
iget-object v1, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
const/4 v2, 0x0
iput-object v2, v1, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
iput-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
goto :goto_7
.end method
.method public abstract c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public final d(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
if-nez p3, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
const-string/jumbo v1, "Nothing to encode!"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/igexin/a/a/b/c;->b:Lcom/igexin/a/a/b/c;
invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/a/a/b/c;->d(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
:cond_15
invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/a/b/c;->a(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method