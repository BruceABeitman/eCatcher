.class public Lcom/facebook/al;
.super Landroid/app/Activity;
.source "LoginActivity.java"
.field private a:Ljava/lang/String;
.field private b:Lcom/facebook/c;
.field private c:Lcom/facebook/k;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static a(Lcom/facebook/k;)Landroid/os/Bundle;
.registers 3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "request"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return-object v0
.end method
.method static synthetic a(Lcom/facebook/al;Lcom/facebook/s;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/al;->a(Lcom/facebook/s;)V
return-void
.end method
.method private a(Lcom/facebook/s;)V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/al;->c:Lcom/facebook/k;
iget v0, p1, Lcom/facebook/s;->a:I
sget v1, Lcom/facebook/t;->b:I
if-ne v0, v1, :cond_23
const/4 v0, 0x0
:goto_a
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "com.facebook.LoginActivity:Result"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
invoke-virtual {p0, v0, v2}, Lcom/facebook/al;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/al;->finish()V
return-void
:cond_23
const/4 v0, -0x1
goto :goto_a
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/c;->a(IILandroid/content/Intent;)Z
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/al; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
sget v0, Lcom/facebook/aw;->com_facebook_login_activity_layout:I
invoke-virtual {p0, v0}, Lcom/facebook/al;->setContentView(I)V
if-eqz p1, :cond_36
const-string v0, "callingPackage"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;
const-string v0, "authorizationClient"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/c;
iput-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
:goto_1c
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
invoke-virtual {v0, p0}, Lcom/facebook/c;->a(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
new-instance v1, Lcom/facebook/am;
invoke-direct {v1, p0}, Lcom/facebook/am;-><init>(Lcom/facebook/al;)V
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/r;)V
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
new-instance v1, Lcom/facebook/an;
invoke-direct {v1, p0}, Lcom/facebook/an;-><init>(Lcom/facebook/al;)V
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/l;)V
const-string v1, " - Lcom/facebook/al; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_36
invoke-virtual {p0}, Lcom/facebook/al;->getCallingPackage()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;
new-instance v0, Lcom/facebook/c;
invoke-direct {v0}, Lcom/facebook/c;-><init>()V
iput-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
invoke-virtual {p0}, Lcom/facebook/al;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "request"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/k;
iput-object v0, p0, Lcom/facebook/al;->c:Lcom/facebook/k;
goto :goto_1c
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/facebook/al; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
invoke-virtual {v0}, Lcom/facebook/c;->a()V
sget v0, Lcom/facebook/av;->com_facebook_login_activity_progress_bar:I
invoke-virtual {p0, v0}, Lcom/facebook/al;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const-string v1, " - Lcom/facebook/al; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/facebook/al; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
iget-object v0, p0, Lcom/facebook/al;->a:Ljava/lang/String;
if-nez v0, :cond_f
new-instance v0, Lcom/facebook/z;
const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
iget-object v1, p0, Lcom/facebook/al;->c:Lcom/facebook/k;
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/k;)V
const-string v1, " - Lcom/facebook/al; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/al; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "callingPackage"
iget-object v1, p0, Lcom/facebook/al;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "authorizationClient"
iget-object v1, p0, Lcom/facebook/al;->b:Lcom/facebook/c;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/facebook/al; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method