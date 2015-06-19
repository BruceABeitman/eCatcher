.class final Lcom/bbm/l/b;
.super Lcom/bbm/j/u;
.source "PaymentController.java"
.field final synthetic a:Lcom/bbm/l/d/b/c;
.field final synthetic b:Lcom/bbm/l/a;
.method constructor <init>(Lcom/bbm/l/a;Lcom/bbm/l/d/b/c;)V
.registers 3
iput-object p1, p0, Lcom/bbm/l/b;->b:Lcom/bbm/l/a;
iput-object p2, p0, Lcom/bbm/l/b;->a:Lcom/bbm/l/d/b/c;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/f/ae;->i:Z
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/bbm/l/b;->a:Lcom/bbm/l/d/b/c;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "AndroidBlackBerryBBM"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/IDS;->hashEcoId(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/bbm/l/d/b/c;->c:Ljava/lang/String;
const/4 v0, 0x1
:goto_26
return v0
:cond_27
const/4 v0, 0x0
goto :goto_26
.end method