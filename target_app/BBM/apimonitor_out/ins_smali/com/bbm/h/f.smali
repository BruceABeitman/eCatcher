.class final Lcom/bbm/h/f;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/fn;
.field final synthetic b:Lcom/bbm/h/a;
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/d/fn;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
iput-object p2, p0, Lcom/bbm/h/f;->a:Lcom/bbm/d/fn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/h/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const-string v0, "clicked incoming invite"
const-class v1, Lcom/bbm/h/a;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/h/f;->a:Lcom/bbm/d/fn;
iget-object v0, v0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v1, Lcom/bbm/d/fp;->c:Lcom/bbm/d/fp;
if-ne v0, v1, :cond_36
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/h/f;->a:Lcom/bbm/d/fn;
iget-object v1, v1, Lcom/bbm/d/fn;->c:Ljava/lang/String;
invoke-static {v1, v2, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZZ)Lcom/bbm/d/bi;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v1
const v2, 0x7f0e057f
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:goto_35
const-string v1, " - Lcom/bbm/h/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_36
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "pending_contact_id"
iget-object v2, p0, Lcom/bbm/h/f;->a:Lcom/bbm/d/fn;
iget-object v2, v2, Lcom/bbm/d/fn;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/h/f;->b:Lcom/bbm/h/a;
invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v0
const v1, 0x7f040001
const v2, 0x7f040004
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
goto :goto_35
.end method