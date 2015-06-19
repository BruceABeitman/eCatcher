.class final Lcom/bbm/ui/c/hn;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"
.implements Lcom/bbm/ui/gy;
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hn;->a:Lcom/bbm/ui/c/hk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/hn;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->j(Lcom/bbm/ui/c/hk;)I
move-result v0
if-ne v0, p1, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/bbm/ui/c/hn;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0, p1}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;I)V
goto :goto_8
.end method