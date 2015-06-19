.class public Lcom/pinguo/camera360/lib/devmode/lib/DmAppManager;
.super Ljava/lang/Object;
.source "DmAppManager.java"
.implements Lcom/pinguo/camera360/lib/devmode/lib/IDevModeAppManager;
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/devmode/lib/DmAppManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/devmode/lib/DmAppManager;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInfo(Landroid/content/Context;)Ljava/util/ArrayList;
.registers 16
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:try_start_5
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v8
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v13
const/4 v14, 0x0
invoke-virtual {v8, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v5
iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
const/16 v13, 0x1000
invoke-virtual {v8, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v6
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "  App information : \n"
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "  versionName : "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v14, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "  versionCode : "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v14, v5, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "  \u6e20\u9053\u5305 : "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v14, v5, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "<<---\u5f53\u524d\u4f7f\u7528\u6743\u9650\u6570\u91cf\uff1a"
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v14, v10
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v1, 0x0
:goto_97
array-length v13, v10
if-lt v1, v13, :cond_106
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_a1
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_a1} :catch_15e
:goto_a1
invoke-static {}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->getInstance()Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;
move-result-object v11
invoke-virtual {v11, p0}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->init(Landroid/content/Context;)V
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->getGpsInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$GpsInfo;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->getSdCardInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SdCardInfo;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v11}, Lcom/pinguo/camera360/lib/devmode/lib/DmSystemManager;->getRomInfo()Lcom/pinguo/camera360/lib/devmode/lib/IDevModeSystemManager$SysInfo;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object v2
:cond_106
:try_start_106
aget-object v3, v10, v1
const/4 v13, 0x0
invoke-virtual {v8, v3, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
move-result-object v12
iget-object v13, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
const/4 v14, 0x0
invoke-virtual {v8, v13, v14}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
move-result-object v4
new-instance v13, Ljava/lang/StringBuilder;
add-int/lit8 v14, v1, 0x1
invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v14, "."
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v13, Ljava/lang/StringBuilder;
const-string/jumbo v14, "   "
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v8}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v14
invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string/jumbo v14, "\n"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_15a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_15a} :catch_15e
add-int/lit8 v1, v1, 0x1
goto/16 :goto_97
:catch_15e
move-exception v0
sget-object v13, Lcom/pinguo/camera360/lib/devmode/lib/DmAppManager;->TAG:Ljava/lang/String;
const-string/jumbo v14, "Could not retrieve permissions for package"
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v13, "error\uff1a\u6743\u9650\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff01\uff01"
invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_a1
.end method