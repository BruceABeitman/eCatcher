.class final Lcom/google/android/gms/tagmanager/am;
.super Ljava/lang/Object;
.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v1, v2, :cond_16
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_15
return-void
:cond_16
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/google/android/gms/tagmanager/am$1;
invoke-direct {v2, v0}, Lcom/google/android/gms/tagmanager/am$1;-><init>(Landroid/content/SharedPreferences$Editor;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
goto :goto_15
.end method