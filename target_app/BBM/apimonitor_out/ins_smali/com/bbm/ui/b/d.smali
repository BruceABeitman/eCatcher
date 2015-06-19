.class final Lcom/bbm/ui/b/d;
.super Ljava/lang/Object;
.source "BBChannelDateOfBirthDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/a;
.method constructor <init>(Lcom/bbm/ui/b/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/b/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;
invoke-static {v0}, Lcom/bbm/ui/b/a;->d(Lcom/bbm/ui/b/a;)Landroid/widget/TextView;
move-result-object v0
if-ne p1, v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;
invoke-static {v0}, Lcom/bbm/ui/b/a;->e(Lcom/bbm/ui/b/a;)V
iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;
invoke-static {v0}, Lcom/bbm/ui/b/a;->f(Lcom/bbm/ui/b/a;)V
:goto_12
const-string v1, " - Lcom/bbm/ui/b/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/ui/b/d;->a:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
goto :goto_12
.end method