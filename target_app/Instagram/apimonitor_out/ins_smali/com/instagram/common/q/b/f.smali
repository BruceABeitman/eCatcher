.class public final Lcom/instagram/common/q/b/f;
.super Ljava/lang/Object;
.source "PushConstantsFactory.java"
.field private static a:Lcom/instagram/common/q/b/e;
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
.registers 3
const-class v1, Lcom/instagram/common/q/b/f;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/common/q/b/f;->a:Lcom/instagram/common/q/b/e;
if-nez v0, :cond_d
invoke-static {p0}, Lcom/instagram/common/q/b/f;->b(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
move-result-object v0
sput-object v0, Lcom/instagram/common/q/b/f;->a:Lcom/instagram/common/q/b/e;
:cond_d
sget-object v0, Lcom/instagram/common/q/b/f;->a:Lcom/instagram/common/q/b/e;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
monitor-exit v1
return-object v0
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/16 v1, 0x80
:try_start_6
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_9
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b
const/4 v0, 0x1
:goto_a
return v0
:catch_b
move-exception v0
const/4 v0, 0x0
goto :goto_a
.end method
.method private static b(Landroid/content/Context;)Lcom/instagram/common/q/b/e;
.registers 2
const-string v0, "com.nokia.pushnotifications.service"
invoke-static {p0, v0}, Lcom/instagram/common/q/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {}, Lcom/instagram/common/q/b/d;->a()Lcom/instagram/common/q/b/e;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-static {}, Lcom/instagram/common/q/b/b;->a()Lcom/instagram/common/q/b/e;
move-result-object v0
goto :goto_c
.end method