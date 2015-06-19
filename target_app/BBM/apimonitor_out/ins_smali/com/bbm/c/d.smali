.class final Lcom/bbm/c/d;
.super Lcom/bbm/j/k;
.source "EventTracker.java"
.field final synthetic a:Lcom/bbm/c/c;
.method constructor <init>(Lcom/bbm/c/c;)V
.registers 3
iput-object p1, p0, Lcom/bbm/c/d;->a:Lcom/bbm/c/c;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/f/ae;->i:Z
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/bbm/c/d;->a:Lcom/bbm/c/c;
iget-object v0, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/blackberry/ids/IDS;->hashEcoId(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/c;Ljava/lang/String;)V
:cond_13
return-void
.end method