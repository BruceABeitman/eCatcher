.class final Lcom/bbm/ui/dg;
.super Ljava/lang/Object;
.source "LinkifyTextView.java"
.implements Landroid/view/View$OnClickListener;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/dg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->a(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;
move-result-object v1
if-eqz v1, :cond_16
invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->b(Lcom/bbm/ui/LinkifyTextView;)Z
move-result v1
if-nez v1, :cond_17
invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->a(Lcom/bbm/ui/LinkifyTextView;)Landroid/view/View$OnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_16
:goto_16
const-string v1, " - Lcom/bbm/ui/dg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
invoke-static {v0}, Lcom/bbm/ui/LinkifyTextView;->c(Lcom/bbm/ui/LinkifyTextView;)Z
goto :goto_16
.end method