.class public final Lcom/instagram/common/q/b/c;
.super Ljava/lang/Object;
.source "C2DMessaging.java"
.method static a(Landroid/content/Context;)J
.registers 5
const-string v0, "com.google.android.c2dm"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "backoff"
const-wide/16 v2, 0x7530
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method static a(Landroid/content/Context;J)V
.registers 5
const-string v0, "com.google.android.c2dm"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "backoff"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
:try_start_0
invoke-static {p0}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
move-result-object v0
new-instance v1, Landroid/content/Intent;
invoke-interface {v0}, Lcom/instagram/common/q/b/e;->b()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Lcom/instagram/common/q/b/e;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "app"
const/4 v2, 0x0
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
const/4 v4, 0x0
invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v0, "sender"
invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
move-result-object v0
invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;
:goto_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
const-string v0, "C2DMessaging"
const-string v1, "C2DM not supported"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_30
.end method
.method static b(Landroid/content/Context;)V
.registers 5
const-string v0, "com.google.android.c2dm"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "dm_registration"
const-string v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "last_registration_change"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method static b(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const-string v0, "com.google.android.c2dm"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "dm_registration"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method