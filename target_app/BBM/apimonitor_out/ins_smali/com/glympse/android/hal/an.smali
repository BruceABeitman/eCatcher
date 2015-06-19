.class  Lcom/glympse/android/hal/an;
.super Ljava/lang/Object;
.source "Keychain.java"
.implements Lcom/glympse/android/hal/GKeychain;
.field public static final bQ:Ljava/lang/String; = "com.glympse.android.v2.keychain"
.field private bR:Landroid/content/SharedPreferences;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "com.glympse.android.v2.keychain"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/an;->bR:Landroid/content/SharedPreferences;
return-void
.end method
.method public load(Ljava/lang/String;Z)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/an;->bR:Landroid/content/SharedPreferences;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/String;Z)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/hal/an;->bR:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v0, 0x1
return v0
.end method
.method public save(Ljava/lang/String;Ljava/lang/String;Z)Z
.registers 5
iget-object v0, p0, Lcom/glympse/android/hal/an;->bR:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v0, 0x1
return v0
.end method