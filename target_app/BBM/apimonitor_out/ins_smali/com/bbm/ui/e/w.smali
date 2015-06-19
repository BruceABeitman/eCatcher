.class final Lcom/bbm/ui/e/w;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/s;
.method constructor <init>(Lcom/bbm/ui/e/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/w; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const-string v0, "Accept Clicked"
const-class v1, Lcom/bbm/ui/e/s;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "hd_request_nag_prompt"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->g()Z
move-result v1
if-nez v1, :cond_bf
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->g(Lcom/bbm/ui/e/s;)Z
move-result v1
if-eqz v1, :cond_bf
if-nez v0, :cond_bf
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "hd_request_nag_prompt"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0465
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0464
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0153
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/ui/e/x;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/x;-><init>(Lcom/bbm/ui/e/w;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0148
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/ui/e/y;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/y;-><init>(Lcom/bbm/ui/e/w;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;Landroid/app/Dialog;)Landroid/app/Dialog;
iget-object v0, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->h(Lcom/bbm/ui/e/s;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->h(Lcom/bbm/ui/e/s;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_bf
iget-object v0, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->i(Lcom/bbm/ui/e/s;)Lcom/bbm/ui/e/bh;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;
invoke-static {v1}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/ui/e/bh;->a(Lcom/bbm/d/fg;)V
const-string v1, " - Lcom/bbm/ui/e/w; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method