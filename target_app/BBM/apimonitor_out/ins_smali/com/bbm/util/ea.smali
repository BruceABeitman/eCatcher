.class final Lcom/bbm/util/ea;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/m;
.field final synthetic b:Lcom/bbm/d/ga;
.field final synthetic c:Lcom/bbm/d/gp;
.field final synthetic d:Landroid/app/Activity;
.method constructor <init>(Lcom/bbm/ui/b/m;Lcom/bbm/d/ga;Lcom/bbm/d/gp;Landroid/app/Activity;)V
.registers 5
iput-object p1, p0, Lcom/bbm/util/ea;->a:Lcom/bbm/ui/b/m;
iput-object p2, p0, Lcom/bbm/util/ea;->b:Lcom/bbm/d/ga;
iput-object p3, p0, Lcom/bbm/util/ea;->c:Lcom/bbm/d/gp;
iput-object p4, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/ea; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const-string v0, "createBlockUpdatesDialog RightButton Clicked"
const-class v1, Lcom/bbm/util/dy;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/util/ea;->a:Lcom/bbm/ui/b/m;
iget-object v0, v0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z
move-result v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/util/ea;->b:Lcom/bbm/d/ga;
invoke-static {v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/ga;)Lcom/bbm/d/gt;
move-result-object v2
iget-object v3, p0, Lcom/bbm/util/ea;->c:Lcom/bbm/d/gp;
iget-object v3, v3, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/bbm/util/dy;->a(ZLcom/bbm/d/gt;Ljava/lang/String;)Ljava/util/List;
move-result-object v2
const-string v3, "userBlockedItem"
invoke-static {v2, v3}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
if-eqz v1, :cond_6a
iget-object v0, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
const v2, 0x7f0e072f
invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
const v4, 0x7f0e072e
invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
const/4 v3, 0x1
iget-object v4, p0, Lcom/bbm/util/ea;->c:Lcom/bbm/d/gp;
iget-object v4, v4, Lcom/bbm/d/gp;->d:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_51
iget-object v2, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
iget-object v3, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
const v4, 0x7f0e0293
invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/bbm/util/eb;
invoke-direct {v4, p0, v1}, Lcom/bbm/util/eb;-><init>(Lcom/bbm/util/ea;Z)V
invoke-static {v2, v0, v3, v4}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/util/ea;->a:Lcom/bbm/ui/b/m;
invoke-virtual {v0}, Lcom/bbm/ui/b/m;->dismiss()V
const-string v1, " - Lcom/bbm/util/ea; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_6a
iget-object v0, p0, Lcom/bbm/util/ea;->d:Landroid/app/Activity;
iget-object v2, p0, Lcom/bbm/util/ea;->b:Lcom/bbm/d/ga;
iget-object v3, p0, Lcom/bbm/util/ea;->c:Lcom/bbm/d/gp;
iget-object v3, v3, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v0, v2, v3}, Lcom/bbm/util/dy;->a(Landroid/content/Context;Lcom/bbm/d/ga;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-array v2, v5, [Ljava/lang/Object;
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_51
.end method