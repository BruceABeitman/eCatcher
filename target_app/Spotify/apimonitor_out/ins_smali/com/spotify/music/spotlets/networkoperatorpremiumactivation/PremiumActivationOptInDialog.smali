.class public Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Landroid/view/View;
.field private p:Landroid/view/View;
.field private q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "payload"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
.registers 4
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
if-nez v0, :cond_24
new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;
invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
invoke-virtual {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;)V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "payload"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a(Ljava/lang/String;)V
:cond_24
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001f
invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->setContentView(I)V
const v0, 0x7f0a0226
invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->n:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->n:Landroid/view/View;
new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$1;
invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$1;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0223
invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->p:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->p:Landroid/view/View;
new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$2;
invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$2;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0227
invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->bi:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;)V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->q:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;
invoke-virtual {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask;->a()V
:cond_12
const-string v1, " - Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method