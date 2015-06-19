.class public Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
if-eqz p1, :cond_11
const-string v1, "default_name"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_11
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v5, 0x7f0a01db
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
const v1, 0x7f0f002e
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v3, -0x1
const/4 v4, -0x2
invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->setContentView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "default_name"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v2, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v2
if-eqz v0, :cond_52
sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v2, v3, :cond_5b
sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v2, v3, :cond_5b
:cond_52
const-string v0, "You should never call this class with an empty uri or any other link type than SpotifyLink.LinkType.TRACK or SpotifyLink.LinkType.ALBUM"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->finish()V
:goto_5a
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5b
if-nez p1, :cond_6f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->y_()Landroid/support/v4/app/r;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a;
move-result-object v0
invoke-virtual {v2, v5, v0}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
invoke-virtual {v2}, Landroid/support/v4/app/w;->b()I
:cond_6f
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
goto :goto_5a
.end method