.class public final Lcom/instagram/common/o/a;
.super Ljava/lang/Object;
.source "BuildInfoUtil.java"
.field private static a:Lcom/instagram/common/o/b;
.method public static a(Landroid/content/Context;)I
.registers 5
const/4 v0, -0x1
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:goto_10
:try_end_10
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11
return v0
:catch_11
move-exception v1
goto :goto_10
.end method
.method public static a()Lcom/instagram/common/o/b;
.registers 1
sget-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/common/o/a;->e()V
:cond_7
sget-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
return-object v0
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const-string v0, "0.0.0 (Unknown)"
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_end_11
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_12
:goto_11
return-object v0
:catch_12
move-exception v1
goto :goto_11
.end method
.method public static b()Z
.registers 2
sget-object v0, Lcom/instagram/common/o/b;->a:Lcom/instagram/common/o/b;
invoke-static {}, Lcom/instagram/common/o/a;->a()Lcom/instagram/common/o/b;
move-result-object v1
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static c(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Lcom/facebook/d/d/c;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/d/d/c;-><init>(Landroid/content/Context;)V
const-string v1, "com.facebook.versioncontrol.branch"
invoke-virtual {v0, v1}, Lcom/facebook/d/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_13
const-string v0, ""
:cond_13
return-object v0
.end method
.method public static c()Z
.registers 2
sget-object v0, Lcom/instagram/common/o/b;->b:Lcom/instagram/common/o/b;
invoke-static {}, Lcom/instagram/common/o/a;->a()Lcom/instagram/common/o/b;
move-result-object v1
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static d(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/d/d/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d()Z
.registers 2
sget-object v0, Lcom/instagram/common/o/b;->c:Lcom/instagram/common/o/b;
invoke-static {}, Lcom/instagram/common/o/a;->a()Lcom/instagram/common/o/b;
move-result-object v1
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private static declared-synchronized e()V
.registers 4
const-class v1, Lcom/instagram/common/o/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_3a
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
new-instance v2, Lcom/facebook/d/d/c;
invoke-direct {v2, v0}, Lcom/facebook/d/d/c;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ".raw_package_type"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/facebook/d/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v2, "debug"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
sget-object v0, Lcom/instagram/common/o/b;->a:Lcom/instagram/common/o/b;
sput-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
:try_end_39
.catchall {:try_start_9 .. :try_end_39} :catchall_3a
goto :goto_7
:catchall_3a
move-exception v0
monitor-exit v1
throw v0
:try_start_3d
:cond_3d
const-string v2, "inhouse"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
sget-object v0, Lcom/instagram/common/o/b;->b:Lcom/instagram/common/o/b;
sput-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
goto :goto_7
:cond_4a
sget-object v0, Lcom/instagram/common/o/b;->c:Lcom/instagram/common/o/b;
sput-object v0, Lcom/instagram/common/o/a;->a:Lcom/instagram/common/o/b;
:try_end_4e
.catchall {:try_start_3d .. :try_end_4e} :catchall_3a
goto :goto_7
.end method