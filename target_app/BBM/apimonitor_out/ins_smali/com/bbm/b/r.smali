.class final Lcom/bbm/b/r;
.super Lcom/bbm/d/b/m;
.source "AdsModel.java"
.field final synthetic a:Lcom/bbm/b/q;
.method constructor <init>(Lcom/bbm/b/q;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/b/r;->a:Lcom/bbm/b/q;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Lcom/bbm/b/a;
iget-boolean v0, p1, Lcom/bbm/b/a;->k:Z
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method