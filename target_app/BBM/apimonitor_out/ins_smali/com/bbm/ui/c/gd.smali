.class final Lcom/bbm/ui/c/gd;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Lcom/bbm/l/d/b;
.field final synthetic a:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/gd;->a:Lcom/bbm/ui/c/fu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ZLcom/bbm/l/d/b/x;)V
.registers 5
if-eqz p1, :cond_12
iget-object v0, p0, Lcom/bbm/ui/c/gd;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0, p2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;)Lcom/bbm/l/d/b/x;
iget-object v0, p0, Lcom/bbm/ui/c/gd;->a:Lcom/bbm/ui/c/fu;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, p2, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/bbm/ui/c/gd;->a:Lcom/bbm/ui/c/fu;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Z)V
goto :goto_11
.end method