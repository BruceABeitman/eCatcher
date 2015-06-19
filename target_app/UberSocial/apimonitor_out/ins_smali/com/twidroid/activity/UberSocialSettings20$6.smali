.class  Lcom/twidroid/activity/UberSocialSettings20$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$6;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceClick(Landroid/preference/Preference;)Z
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$6;->a:Lcom/twidroid/activity/UberSocialSettings20;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialSettings20$6;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-virtual {v2}, Lcom/twidroid/activity/UberSocialSettings20;->getApplication()Landroid/app/Application;
move-result-object v2
const-class v3, Lcom/twidroid/activity/StreamingPreferences;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialSettings20;->startActivity(Landroid/content/Intent;)V
const/4 v0, 0x1
return v0
.end method