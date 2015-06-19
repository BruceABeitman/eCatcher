.class public Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private static final q:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private n:Ljava/lang/String;
.field private p:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ai:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->q:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->q:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->n:Ljava/lang/String;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v5, 0x8
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0300d7
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->setContentView(I)V
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0f044c
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a02e5
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0a0220
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
const v2, 0x7f0a02e6
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v6, "radio_uri"
invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->n:Ljava/lang/String;
if-eqz p1, :cond_4c
const-string v3, "radio_uri"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->n:Ljava/lang/String;
:cond_4c
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v6, "body"
invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->p:Ljava/lang/String;
if-eqz p1, :cond_62
const-string v3, "body"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->p:Ljava/lang/String;
:cond_62
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->p:Ljava/lang/String;
const-string v6, "A body text must be specified."
invoke-static {v3, v6}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
const v3, 0x7f0a021e
invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->p:Ljava/lang/String;
invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->setResult(I)V
const v3, 0x7f0f0449
invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
new-instance v3, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->n:Ljava/lang/String;
if-eqz v3, :cond_c7
move v3, v4
:goto_8d
invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V
new-instance v3, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$2;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;)V
invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0f044a
invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V
new-instance v1, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;)V
invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-class v1, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v1
if-nez v1, :cond_bd
invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V
const v1, 0x7f020061
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
:cond_bd
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ai:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_c7
move v3, v5
goto :goto_8d
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "radio_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->n:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "body"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity;->p:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/UpsellPremiumOnlyActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method