.class public final Lcom/spotify/mobile/android/spotlets/user/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method static a(Landroid/app/Activity;Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->isClaimed()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getClaimedByUri()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_18
const-string v0, "Claimed invitation code doesn\'t contain user uri"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
:goto_17
return-void
:cond_18
invoke-static {p0, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto :goto_17
:cond_20
new-instance v0, Lcom/spotify/mobile/android/ui/activity/k;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/k;-><init>(Landroid/content/Context;)V
const v1, 0x7f0f0302
invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/activity/k;->a(Z)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
const v1, 0x7f0f0303
invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/k;->e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
const v1, 0x7f0f0304
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getCode()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/k;->f(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
const v1, 0x7f0f0221
invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
const v1, 0x7f0f0222
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getCode()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/k;->d(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/k;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/k;->a()Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto :goto_17
.end method