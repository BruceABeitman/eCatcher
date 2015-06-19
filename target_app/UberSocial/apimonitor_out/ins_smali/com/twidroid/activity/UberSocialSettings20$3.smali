.class  Lcom/twidroid/activity/UberSocialSettings20$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$3;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.registers 4
check-cast p2, Ljava/lang/CharSequence;
invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
const/4 v0, 0x1
return v0
.end method