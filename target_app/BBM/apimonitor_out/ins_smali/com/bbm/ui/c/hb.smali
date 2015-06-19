.class final Lcom/bbm/ui/c/hb;
.super Ljava/lang/Object;
.source "StoreFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/gz;
.method constructor <init>(Lcom/bbm/ui/c/gz;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/hb; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;
invoke-static {v0}, Lcom/bbm/ui/c/gz;->b(Lcom/bbm/ui/c/gz;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;
invoke-static {v0}, Lcom/bbm/ui/c/gz;->c(Lcom/bbm/ui/c/gz;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;
invoke-static {v0}, Lcom/bbm/ui/c/gz;->d(Lcom/bbm/ui/c/gz;)I
iget-object v0, p0, Lcom/bbm/ui/c/hb;->a:Lcom/bbm/ui/c/gz;
invoke-static {v0}, Lcom/bbm/ui/c/gz;->a(Lcom/bbm/ui/c/gz;)V
const-string v1, " - Lcom/bbm/ui/c/hb; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method