.class final Lcom/bbm/ui/activities/le;
.super Ljava/lang/Object;
.source "GroupAdminPasswordActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/le; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mHeaderActionBar Positive Button Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->b(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->c(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/g/ar;
invoke-direct {v3, v1, v2}, Lcom/bbm/g/ar;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->finish()V
:goto_4e
const-string v1, " - Lcom/bbm/ui/activities/le; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4f
iget-object v0, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/le;->a:Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
const v2, 0x7f0e043a
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x30
const/4 v3, 0x0
const/16 v4, 0x64
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
goto :goto_4e
.end method