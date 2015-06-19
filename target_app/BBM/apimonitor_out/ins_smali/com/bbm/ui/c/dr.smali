.class final Lcom/bbm/ui/c/dr;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/b/o;
.field final synthetic c:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/dr;->c:Lcom/bbm/ui/c/de;
iput-object p2, p0, Lcom/bbm/ui/c/dr;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/ui/c/dr;->b:Lcom/bbm/ui/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/dr; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "showGroupRestoreStatusDialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/c/de;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/dr;->a:Ljava/lang/String;
new-instance v2, Lcom/bbm/g/cp;
invoke-direct {v2, v1}, Lcom/bbm/g/cp;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/c/dr;->b:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
const-string v1, " - Lcom/bbm/ui/c/dr; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method