.class public Lcom/twidroid/net/hockeyapp/android/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "versionInfo"
sput-object v0, Lcom/twidroid/net/hockeyapp/android/s;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
if-eqz p0, :cond_12
const-string v0, "HockeyApp"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
sget-object v1, Lcom/twidroid/net/hockeyapp/android/s;->a:Ljava/lang/String;
const-string v2, "[]"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_11
return-object v0
:cond_12
const-string v0, "[]"
goto :goto_11
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-eqz p0, :cond_15
const-string v0, "HockeyApp"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
sget-object v1, Lcom/twidroid/net/hockeyapp/android/s;->a:Ljava/lang/String;
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_15
return-void
.end method