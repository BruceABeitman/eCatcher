.class final Lcom/bbm/ui/ec;
.super Ljava/lang/Object;
.source "NFCInviteRequest.java"
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field final synthetic a:Lcom/bbm/ui/eb;
.method constructor <init>(Lcom/bbm/ui/eb;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ec;->a:Lcom/bbm/ui/eb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/ec;->a:Lcom/bbm/ui/eb;
invoke-static {v0}, Lcom/bbm/ui/eb;->a(Lcom/bbm/ui/eb;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
if-nez v0, :cond_16
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
:goto_15
:cond_15
return-void
:cond_16
const-string v1, "add_contact_on_tap"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/bbm/ui/ec;->a:Lcom/bbm/ui/eb;
invoke-virtual {v1, v0}, Lcom/bbm/ui/eb;->a(Landroid/app/Activity;)V
goto :goto_15
.end method