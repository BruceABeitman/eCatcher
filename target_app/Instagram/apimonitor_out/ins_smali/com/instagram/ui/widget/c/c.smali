.class final Lcom/instagram/ui/widget/c/c;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/ui/widget/c/a;
.method constructor <init>(Lcom/instagram/ui/widget/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/widget/c/c;->a:Lcom/instagram/ui/widget/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/ui/widget/c/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/ui/widget/c/c;->a:Lcom/instagram/ui/widget/c/a;
invoke-static {v0}, Lcom/instagram/ui/widget/c/a;->a(Lcom/instagram/ui/widget/c/a;)Landroid/view/View$OnClickListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/ui/widget/c/c;->a:Lcom/instagram/ui/widget/c/a;
invoke-static {v0}, Lcom/instagram/ui/widget/c/a;->a(Lcom/instagram/ui/widget/c/a;)Landroid/view/View$OnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_11
const-string v1, " - Lcom/instagram/ui/widget/c/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method