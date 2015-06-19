.class final Lcom/bbm/d/f;
.super Lcom/bbm/d/b/m;
.source "BbmdsModel.java"
.field final synthetic a:Lcom/bbm/d/a;
.method constructor <init>(Lcom/bbm/d/a;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/d/f;->a:Lcom/bbm/d/a;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Z
.registers 4
check-cast p1, Lcom/bbm/d/fn;
iget-object v0, p1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v1, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
if-eq v0, v1, :cond_12
iget-boolean v0, p1, Lcom/bbm/d/fn;->d:Z
if-eqz v0, :cond_12
iget-boolean v0, p1, Lcom/bbm/d/fn;->f:Z
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method