.class public Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private static final n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aB:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sput-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const/16 v3, 0x8
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->setContentView(I)V
const v0, 0x7f0a01fc
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget-object v1, Lcom/spotify/mobile/android/util/bv;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a021e
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget-object v1, Lcom/spotify/mobile/android/util/bv;->j:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a021f
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget-object v1, Lcom/spotify/mobile/android/util/bv;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a0220
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0a0221
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
const v2, 0x7f0a0222
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->setResult(I)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;)V
invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z
move-result v0
if-nez v0, :cond_70
invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V
:cond_70
invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I
move-result v0
if-ne v0, v3, :cond_86
sget-object v0, Lcom/spotify/mobile/android/util/bv;->a:Ljava/lang/String;
invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;)V
invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_86
sget-object v0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiMftGroup3NoMoreTimeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method