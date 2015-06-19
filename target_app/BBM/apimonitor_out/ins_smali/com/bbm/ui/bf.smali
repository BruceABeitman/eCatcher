.class final Lcom/bbm/ui/bf;
.super Ljava/lang/Object;
.source "EmoticonInputPanel.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/EmoticonInputPanel;
.method constructor <init>(Lcom/bbm/ui/EmoticonInputPanel;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/bf;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/bf; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "toggleTimebombPanel"
const-class v1, Lcom/bbm/ui/EmoticonInputPanel;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/bf;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->b(Lcom/bbm/ui/EmoticonInputPanel;)Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/bbm/ui/bf;->a:Lcom/bbm/ui/EmoticonInputPanel;
invoke-static {v0}, Lcom/bbm/ui/EmoticonInputPanel;->a(Lcom/bbm/ui/EmoticonInputPanel;)Lcom/bbm/ui/bl;
move-result-object v0
sget-object v1, Lcom/bbm/ui/bl;->c:Lcom/bbm/ui/bl;
if-ne v0, v1, :cond_21
iget-object v0, p0, Lcom/bbm/ui/bf;->a:Lcom/bbm/ui/EmoticonInputPanel;
sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
:goto_20
const-string v1, " - Lcom/bbm/ui/bf; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_21
iget-object v0, p0, Lcom/bbm/ui/bf;->a:Lcom/bbm/ui/EmoticonInputPanel;
sget-object v1, Lcom/bbm/ui/bl;->c:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
goto :goto_20
:cond_29
const v0, 0x7f0e0313
invoke-static {v0}, Lcom/bbm/util/fb;->a(I)V
goto :goto_20
.end method