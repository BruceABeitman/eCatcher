.class final Lcom/bbm/setup/a;
.super Ljava/lang/Object;
.source "ContactListAccessPromptActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/a;->a:Landroid/content/DialogInterface$OnClickListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v0, -0x1
if-ne p2, v0, :cond_2c
move v0, v1
:goto_5
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v3, "has_shown_contact_upload"
invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v3, "icerberg_upload_allowed"
invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
if-nez v0, :cond_23
const-string v0, "has_shown_pyk_add"
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "has_shown_pyk_invite"
invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
:cond_23
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/bbm/setup/a;->a:Landroid/content/DialogInterface$OnClickListener;
invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
const-string v1, " - Lcom/bbm/setup/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2c
const/4 v0, 0x0
goto :goto_5
.end method