.class final Lcom/bbm/ui/c/el;
.super Ljava/lang/Object;
.source "OwnProfileDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/ej;
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/el; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mOnClickListener onClick"
const-class v1, Lcom/bbm/ui/c/ej;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;
invoke-virtual {v0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->c(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ev;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/bbm/ui/c/el;->a:Lcom/bbm/ui/c/ej;
invoke-static {v0}, Lcom/bbm/ui/c/ej;->c(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ev;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/ui/c/ev;->a()V
:cond_22
const-string v1, " - Lcom/bbm/ui/c/el; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method