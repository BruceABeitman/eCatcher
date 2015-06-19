.class public final Lcom/flurry/sdk/du;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/du;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/du;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_11
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x514f
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_10
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_12
move-result-object v0
:cond_11
:goto_11
return-object v0
:catch_12
move-exception v1
sget-object v1, Lcom/flurry/sdk/du;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Cannot find package info for package: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method public static b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_11
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_10
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_12
move-result-object v0
:cond_11
:goto_11
return-object v0
:catch_12
move-exception v1
sget-object v1, Lcom/flurry/sdk/du;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Cannot find application info for package: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method public static c(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/flurry/sdk/du;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
move-result-object v0
if-eqz v0, :cond_d
iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
if-eqz v1, :cond_d
iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
:goto_c
return-object v0
:cond_d
const-string v0, ""
goto :goto_c
.end method
.method public static d(Landroid/content/Context;)Landroid/os/Bundle;
.registers 3
invoke-static {p0}, Lcom/flurry/sdk/du;->b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
move-result-object v0
if-eqz v0, :cond_d
iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v1, :cond_d
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
:goto_c
return-object v0
:cond_d
sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;
goto :goto_c
.end method