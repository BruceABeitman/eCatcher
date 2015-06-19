.class  Lcom/facebook/b/o;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/bf;
.field final synthetic a:Lcom/facebook/b/m;
.field private final b:Lcom/facebook/bf;
.method public constructor <init>(Lcom/facebook/b/m;Lcom/facebook/bf;)V
.registers 3
iput-object p1, p0, Lcom/facebook/b/o;->a:Lcom/facebook/b/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/b/o;->b:Lcom/facebook/bf;
return-void
.end method
.method public a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
.registers 6
iget-object v0, p0, Lcom/facebook/b/o;->b:Lcom/facebook/bf;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/b/o;->a:Lcom/facebook/b/m;
invoke-virtual {v0}, Lcom/facebook/b/m;->e()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/b/o;->b:Lcom/facebook/bf;
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/bf;->a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
:cond_11
iget-object v0, p0, Lcom/facebook/b/o;->a:Lcom/facebook/b/m;
invoke-static {v0}, Lcom/facebook/b/m;->b(Lcom/facebook/b/m;)Lcom/facebook/aw;
move-result-object v0
if-ne p1, v0, :cond_25
invoke-virtual {p2}, Lcom/facebook/bk;->b()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/facebook/b/o;->a:Lcom/facebook/b/m;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/b/m;->a(Lcom/facebook/aw;)V
:cond_25
return-void
.end method