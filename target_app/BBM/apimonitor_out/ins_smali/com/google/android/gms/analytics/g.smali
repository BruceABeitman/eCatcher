.class  Lcom/google/android/gms/analytics/g;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/m;
.field private static qI:Ljava/lang/Object;
.field private static qV:Lcom/google/android/gms/analytics/g;
.field protected qR:Ljava/lang/String;
.field protected qS:Ljava/lang/String;
.field protected qT:Ljava/lang/String;
.field protected qU:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/analytics/g;->qI:Ljava/lang/Object;
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
iput-object v0, p0, Lcom/google/android/gms/analytics/g;->qT:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/analytics/g;->qT:Ljava/lang/String;
invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/g;->qU:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/analytics/g;->qT:Ljava/lang/String;
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
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_end_2f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2f} :catch_34
:goto_2f
:cond_2f
iput-object v1, p0, Lcom/google/android/gms/analytics/g;->qR:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/analytics/g;->qS:Ljava/lang/String;
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
invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
goto :goto_2f
.end method
.method public static bt()Lcom/google/android/gms/analytics/g;
.registers 1
sget-object v0, Lcom/google/android/gms/analytics/g;->qV:Lcom/google/android/gms/analytics/g;
return-object v0
.end method
.method public static n(Landroid/content/Context;)V
.registers 3
sget-object v1, Lcom/google/android/gms/analytics/g;->qI:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/g;->qV:Lcom/google/android/gms/analytics/g;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/analytics/g;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/g;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/analytics/g;->qV:Lcom/google/android/gms/analytics/g;
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
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return-object v0
:cond_4
const-string v1, "&an"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f
iget-object v0, p0, Lcom/google/android/gms/analytics/g;->qR:Ljava/lang/String;
goto :goto_3
:cond_f
const-string v1, "&av"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v0, p0, Lcom/google/android/gms/analytics/g;->qS:Ljava/lang/String;
goto :goto_3
:cond_1a
const-string v1, "&aid"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
iget-object v0, p0, Lcom/google/android/gms/analytics/g;->qT:Ljava/lang/String;
goto :goto_3
:cond_25
const-string v1, "&aiid"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3
iget-object v0, p0, Lcom/google/android/gms/analytics/g;->qU:Ljava/lang/String;
goto :goto_3
.end method
.method public x(Ljava/lang/String;)Z
.registers 3
const-string v0, "&an"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "&av"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "&aid"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "&aiid"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method