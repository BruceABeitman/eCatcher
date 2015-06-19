.class public final Lnet/hockeyapp/android/d/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/SharedPreferences;
.field private b:Landroid/content/SharedPreferences$Editor;
.field private c:Landroid/content/SharedPreferences;
.field private d:Landroid/content/SharedPreferences$Editor;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lnet/hockeyapp/android/d/e;-><init>()V
return-void
.end method
.method public static a()Lnet/hockeyapp/android/d/e;
.registers 1
sget-object v0, Lnet/hockeyapp/android/d/f;->a:Lnet/hockeyapp/android/d/e;
return-object v0
.end method
.method public static a(Landroid/content/SharedPreferences$Editor;)V
.registers 2
invoke-static {}, Lnet/hockeyapp/android/d/e;->b()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_d
return-void
:cond_e
invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_d
.end method
.method private static b()Ljava/lang/Boolean;
.registers 3
const/4 v1, 0x0
:try_start_1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v0, v2, :cond_d
const/4 v0, 0x1
:goto_8
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_b
.catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_b} :catch_f
move-result-object v0
:goto_c
return-object v0
:cond_d
move v0, v1
goto :goto_8
:catch_f
move-exception v0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
const-string v1, "net.hockeyapp.android.prefs_feedback_token"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
iget-object v1, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
if-eqz v1, :cond_3
iget-object v1, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
const-string v2, "net.hockeyapp.android.prefs_key_feedback_token"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_23
const-string v0, "net.hockeyapp.android.prefs_feedback_token"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
if-eqz v0, :cond_23
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/d/e;->b:Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->b:Landroid/content/SharedPreferences$Editor;
const-string v1, "net.hockeyapp.android.prefs_key_feedback_token"
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->b:Landroid/content/SharedPreferences$Editor;
invoke-static {v0}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/SharedPreferences$Editor;)V
:cond_23
return-void
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v4, 0x0
if-eqz p1, :cond_2a
const-string v0, "net.hockeyapp.android.prefs_name_email"
invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
if-eqz v0, :cond_2a
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/d/e;->d:Landroid/content/SharedPreferences$Editor;
if-eqz p2, :cond_1d
if-eqz p3, :cond_1d
if-nez p4, :cond_2b
:cond_1d
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->d:Landroid/content/SharedPreferences$Editor;
const-string v1, "net.hockeyapp.android.prefs_key_name_email"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:goto_25
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->d:Landroid/content/SharedPreferences$Editor;
invoke-static {v0}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/SharedPreferences$Editor;)V
:cond_2a
return-void
:cond_2b
iget-object v0, p0, Lnet/hockeyapp/android/d/e;->d:Landroid/content/SharedPreferences$Editor;
const-string v1, "net.hockeyapp.android.prefs_key_name_email"
const-string v2, "%s|%s|%s"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
aput-object p2, v3, v4
const/4 v4, 0x1
aput-object p3, v3, v4
const/4 v4, 0x2
aput-object p4, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_25
.end method
.method public final b(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
const-string v1, "net.hockeyapp.android.prefs_name_email"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
iget-object v1, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
if-eqz v1, :cond_3
iget-object v1, p0, Lnet/hockeyapp/android/d/e;->c:Landroid/content/SharedPreferences;
const-string v2, "net.hockeyapp.android.prefs_key_name_email"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method