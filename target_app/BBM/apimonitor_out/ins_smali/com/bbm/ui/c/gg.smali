.class final Lcom/bbm/ui/c/gg;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/gf;
.method constructor <init>(Lcom/bbm/ui/c/gf;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/gg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;
invoke-virtual {v0}, Lcom/bbm/ui/c/gf;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;
iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;
iget-object v1, p0, Lcom/bbm/ui/c/gg;->a:Lcom/bbm/ui/c/gf;
iget-object v1, v1, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->p(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/d/b/x;
move-result-object v1
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V
const-string v1, " - Lcom/bbm/ui/c/gg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method