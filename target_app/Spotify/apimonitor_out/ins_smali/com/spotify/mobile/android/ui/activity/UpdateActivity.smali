.class public Lcom/spotify/mobile/android/ui/activity/UpdateActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Landroid/net/Uri;
.field private p:Lcom/spotify/mobile/android/ui/actions/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->p:Lcom/spotify/mobile/android/ui/actions/c;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/UpdateActivity;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->n:Landroid/net/Uri;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/UpdateActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->n:Landroid/net/Uri;
if-eqz p1, :cond_1b
const-string v0, "update_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->n:Landroid/net/Uri;
:cond_1b
const v0, 0x7f0300d6
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->setContentView(I)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->az:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->p:Lcom/spotify/mobile/android/ui/actions/c;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->az:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const/4 v2, 0x1
invoke-virtual {v0, p0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Z)V
const v0, 0x7f0a0124
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/UpdateActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0125
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/UpdateActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/UpdateActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/UpdateActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/UpdateActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "update_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;->n:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/UpdateActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method