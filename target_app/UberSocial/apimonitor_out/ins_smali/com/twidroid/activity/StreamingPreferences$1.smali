.class  Lcom/twidroid/activity/StreamingPreferences$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.field final synthetic a:Lcom/twidroid/activity/StreamingPreferences;
.method constructor <init>(Lcom/twidroid/activity/StreamingPreferences;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/StreamingPreferences$1;->a:Lcom/twidroid/activity/StreamingPreferences;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.registers 5
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_11
const-string v0, "streaming"
const-string v1, "enabled"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
const/4 v0, 0x1
return v0
:cond_11
const-string v0, "streaming"
const-string v1, "disabled"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method