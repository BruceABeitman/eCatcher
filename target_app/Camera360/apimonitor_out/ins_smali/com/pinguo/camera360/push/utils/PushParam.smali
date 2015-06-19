.class public final Lcom/pinguo/camera360/push/utils/PushParam;
.super Ljava/lang/Object;
.source "PushParam.java"
.field public static final PACK_NAME:Ljava/lang/String; = "Camera360"
.field public static final UPDATE_URL:Ljava/lang/String; = "http://update.camera360.com/VersionCheck/VersionCheck.aspx"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getUpdateParam(Landroid/content/Context;Lcom/pinguo/camera360/push/utils/PushPreference;)Ljava/util/Map;
.registers 12
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v7
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v3
iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v8
invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v8, 0x2d
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v8
invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v7, Ljava/lang/StringBuilder;
sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v8, 0x5f
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {p0, p1}, Lcom/pinguo/camera360/push/utils/PushUtils;->getIMEI(Landroid/content/Context;Lcom/pinguo/camera360/push/utils/PushPreference;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f080084
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v7, "cuid"
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "packagename"
const-string/jumbo v8, "Camera360"
invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "VersionId"
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "LanguageSimple"
invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "channelSimple"
invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "IMEI"
invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "rom"
invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v5
.end method