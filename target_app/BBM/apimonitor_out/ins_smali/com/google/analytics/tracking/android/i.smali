.class final Lcom/google/analytics/tracking/android/i;
.super Ljava/lang/Object;
.source "AppFieldsDefaultProvider.java"
.implements Lcom/google/analytics/tracking/android/n;
.field private static e:Lcom/google/analytics/tracking/android/i;
.field private static f:Ljava/lang/Object;
.field protected a:Ljava/lang/String;
.field protected b:Ljava/lang/String;
.field protected c:Ljava/lang/String;
.field protected d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/analytics/tracking/android/i;->f:Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/analytics/tracking/android/i;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->c:Ljava/lang/String;
invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/analytics/tracking/android/i;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/google/analytics/tracking/android/i;->c:Ljava/lang/String;
const/4 v0, 0x0
:try_start_18
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v3
if-eqz v3, :cond_2f
iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_end_2f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2f} :catch_34
:goto_2f
:cond_2f
iput-object v1, p0, Lcom/google/analytics/tracking/android/i;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/google/analytics/tracking/android/i;->b:Ljava/lang/String;
return-void
:catch_34
move-exception v2
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error retrieving package info: appName set to "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
goto :goto_2f
.end method
.method public static a()Lcom/google/analytics/tracking/android/i;
.registers 1
sget-object v0, Lcom/google/analytics/tracking/android/i;->e:Lcom/google/analytics/tracking/android/i;
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 3
sget-object v1, Lcom/google/analytics/tracking/android/i;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/analytics/tracking/android/i;->e:Lcom/google/analytics/tracking/android/i;
if-nez v0, :cond_e
new-instance v0, Lcom/google/analytics/tracking/android/i;
invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/i;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/analytics/tracking/android/i;->e:Lcom/google/analytics/tracking/android/i;
:cond_e
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_10
return-void
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "&an"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Ljava/lang/String;
:goto_a
return-object v0
:cond_b
const-string v0, "&av"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->b:Ljava/lang/String;
goto :goto_a
:cond_16
const-string v0, "&aid"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->c:Ljava/lang/String;
goto :goto_a
:cond_21
const-string v0, "&aiid"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->d:Ljava/lang/String;
goto :goto_a
:cond_2c
const/4 v0, 0x0
goto :goto_a
.end method