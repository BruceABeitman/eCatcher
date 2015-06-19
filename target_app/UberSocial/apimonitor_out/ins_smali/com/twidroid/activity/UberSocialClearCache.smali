.class public Lcom/twidroid/activity/UberSocialClearCache;
.super Landroid/app/Activity;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "TwidroydClearCache"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/activity/UberSocialClearCache; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030069
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialClearCache;->setContentView(I)V
const v0, 0x7f090100
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialClearCache;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/activity/UberSocialClearCache$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialClearCache$1;-><init>(Lcom/twidroid/activity/UberSocialClearCache;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialClearCache; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateDialog(I)Landroid/app/Dialog;
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x108009b
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c023b
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00d0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002b
new-instance v2, Lcom/twidroid/activity/UberSocialClearCache$3;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialClearCache$3;-><init>(Lcom/twidroid/activity/UberSocialClearCache;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002a
new-instance v2, Lcom/twidroid/activity/UberSocialClearCache$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialClearCache$2;-><init>(Lcom/twidroid/activity/UberSocialClearCache;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
return-object v0
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialClearCache; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
const-string v1, " - Lcom/twidroid/activity/UberSocialClearCache; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method