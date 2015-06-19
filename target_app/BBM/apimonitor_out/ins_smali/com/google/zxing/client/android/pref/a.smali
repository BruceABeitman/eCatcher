.class final Lcom/google/zxing/client/android/pref/a;
.super Ljava/lang/Object;
.source "BSPlusPreference.java"
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.field final synthetic a:Lcom/google/zxing/client/android/pref/BSPlusPreference;
.method constructor <init>(Lcom/google/zxing/client/android/pref/BSPlusPreference;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/pref/a;->a:Lcom/google/zxing/client/android/pref/BSPlusPreference;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
const-string v2, "market://details?id=com.srowen.bs.android"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/google/zxing/client/android/pref/a;->a:Lcom/google/zxing/client/android/pref/BSPlusPreference;
invoke-virtual {v1}, Lcom/google/zxing/client/android/pref/BSPlusPreference;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const/4 v0, 0x1
return v0
.end method