.class final Lcom/c/a/bz;
.super Ljava/lang/Object;
.implements Lcom/c/y;
.field final a:Lcom/c/ba;
.field final b:J
.method constructor <init>(Lcom/c/ba;J)V
.registers 4
iput-object p1, p0, Lcom/c/a/bz;->a:Lcom/c/ba;
iput-wide p2, p0, Lcom/c/a/bz;->b:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/ap;)Z
.registers 6
invoke-interface {p1}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v0
iget-object v1, p0, Lcom/c/a/bz;->a:Lcom/c/ba;
invoke-virtual {v0, v1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v0
iget-wide v2, p0, Lcom/c/a/bz;->b:J
cmp-long v0, v0, v2
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public bridge synthetic a(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Lcom/c/ap;
invoke-virtual {p0, p1}, Lcom/c/a/bz;->a(Lcom/c/ap;)Z
move-result v0
return v0
.end method