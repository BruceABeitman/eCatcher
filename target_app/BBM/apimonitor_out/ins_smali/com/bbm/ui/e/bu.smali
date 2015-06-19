.class final Lcom/bbm/ui/e/bu;
.super Ljava/lang/Object;
.source "SharedAdHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/bt;
.method constructor <init>(Lcom/bbm/ui/e/bt;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/bu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->a(Lcom/bbm/ui/e/bt;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/bbm/ui/e/bu;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->b(Lcom/bbm/ui/e/bt;)V
:cond_d
instance-of v0, p1, Lcom/bbm/ui/LinkifyTextView;
if-eqz v0, :cond_1e
move-object v0, p1
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z
if-nez v0, :cond_1e
check-cast p1, Lcom/bbm/ui/LinkifyTextView;
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V
:cond_1e
const-string v1, " - Lcom/bbm/ui/e/bu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method