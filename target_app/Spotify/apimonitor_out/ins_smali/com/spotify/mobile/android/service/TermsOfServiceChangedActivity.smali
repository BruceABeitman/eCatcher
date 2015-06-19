.class public Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;
.super Lcom/spotify/mobile/android/service/flow/FlowActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x2000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->setContentView(I)V
invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->setFinishOnTouchOutside(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "Received intent with action %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "licenses"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_34
const-string v0, "TOS licenses are null"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->finish()V
:goto_33
:cond_33
const-string v1, " - Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_34
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->y_()Landroid/support/v4/app/r;
move-result-object v1
const-string v2, "FlowLogicFragmentTag"
invoke-virtual {v1, v2}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
if-nez v1, :cond_33
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->a([Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/logic/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/TermsOfServiceChangedActivity;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)V
goto :goto_33
.end method