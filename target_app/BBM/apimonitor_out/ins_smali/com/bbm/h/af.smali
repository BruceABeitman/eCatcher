.class final Lcom/bbm/h/af;
.super Lcom/bbm/d/b/o;
.source "AddContactsFragment.java"
.field final synthetic b:Lcom/bbm/h/m;
.method constructor <init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/af;->b:Lcom/bbm/h/m;
invoke-direct {p0, p2}, Lcom/bbm/d/b/o;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 7
check-cast p1, Lcom/bbm/d/fn;
check-cast p2, Lcom/bbm/d/fn;
iget-wide v0, p2, Lcom/bbm/d/fn;->i:J
iget-wide v2, p1, Lcom/bbm/d/fn;->i:J
cmp-long v0, v0, v2
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, -0x1
goto :goto_d
.end method