.class  Lcom/google/android/gms/tagmanager/dk;
.super Ljava/lang/Object;
.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/dk;->a(Landroid/content/SharedPreferences$Editor;)V
return-void
.end method
.method static a(Landroid/content/SharedPreferences$Editor;)V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_a
invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_9
return-void
:cond_a
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/google/android/gms/tagmanager/dk$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/dk$1;-><init>(Landroid/content/SharedPreferences$Editor;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_9
.end method