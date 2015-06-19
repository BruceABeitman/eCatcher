.class final Lcom/bbm/ui/er;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/er; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_42
:goto_8
const-string v1, " - Lcom/bbm/ui/er; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
const-string v0, "Send clicked"
const-class v1, Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->b(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->c(Lcom/bbm/ui/QuickShareGlympseView;)V
goto :goto_8
:sswitch_1f
const-string v0, "Update clicked"
const-class v1, Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->d(Lcom/bbm/ui/QuickShareGlympseView;)V
iget-object v0, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->e(Lcom/bbm/ui/QuickShareGlympseView;)Lcom/bbm/ui/fa;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/ui/fa;->a()V
goto :goto_8
:sswitch_35
const-string v0, "Retry clicked"
const-class v1, Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/er;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, v2}, Lcom/bbm/ui/QuickShareGlympseView;->a(Lcom/bbm/ui/QuickShareGlympseView;Z)V
goto :goto_8
:sswitch_data_42
.sparse-switch
0x7f0a062a -> :sswitch_9
0x7f0a062b -> :sswitch_1f
0x7f0a0637 -> :sswitch_35
.end sparse-switch
.end method