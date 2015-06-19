.class public Lcom/umeng/newxp/common/g;
.super Lcom/umeng/common/b;
.source "XpUtils.java"
.field private static d:Ljava/util/Map;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/umeng/common/b;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-gtz v0, :cond_3a
new-instance v0, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u83b7\u53d6\u8d44\u6e90ID\u5931\u8d25:(packageName="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " type="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " name="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3a
return v0
.end method
.method public static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
if-eqz p1, :cond_e
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->appkey:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_e
iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->appkey:Ljava/lang/String;
:cond_d
:goto_d
return-object v0
:cond_e
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->APPKEY:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_19
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->APPKEY:Ljava/lang/String;
goto :goto_d
:cond_19
:try_start_19
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v1
if-eqz v1, :cond_d
iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v2, "UMENG_APPKEY"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_39
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_d
:cond_39
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."
invoke-static {v1, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_41
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41} :catch_42
goto :goto_d
:catch_42
move-exception v1
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v3, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_d
.end method
.method public static a(Ljava/util/List;)Ljava/util/List;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_3
.end method
.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_64
sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z
if-eqz v0, :cond_63
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_21
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_76
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_2b
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_88
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Showing next page data, before filtered: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Showing next page data, after filtered: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
return-object v1
:cond_64
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget-object v3, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-static {v3, p0}, Lcom/umeng/newxp/common/g;->a(Ljava/lang/String;Ljava/util/List;)Z
move-result v3
if-nez v3, :cond_9
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_76
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v0, ", "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_21
:cond_88
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v0, ", "
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2b
.end method
.method public static a(Landroid/widget/ImageView;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/common/g$a;)V
.registers 5
const/16 v0, 0x8
invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V
new-instance v0, Lcom/umeng/newxp/common/h;
invoke-direct {v0, p3, p2, p1, p0}, Lcom/umeng/newxp/common/h;-><init>(Lcom/umeng/newxp/common/g$a;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Landroid/widget/ImageView;)V
invoke-virtual {p2, p1, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
return-void
.end method
.method public static a(Landroid/app/Activity;)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
const-string/jumbo v0, "activity"
invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
const/4 v3, 0x1
invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
move-result-object v0
const/4 v3, 0x0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;
iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "    "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_49
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_50
move-result v0
if-eqz v0, :cond_4e
move v0, v1
:goto_4d
return v0
:cond_4e
move v0, v2
goto :goto_4d
:catch_50
move-exception v0
move v0, v2
goto :goto_4d
.end method
.method private static a(Ljava/lang/String;Ljava/util/List;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p0, :cond_c
if-eqz p1, :cond_c
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v0, v1, :cond_e
:cond_c
move v0, v2
:goto_d
return v0
:cond_e
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1a
move v0, v2
goto :goto_d
:cond_1a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget-object v4, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_12
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
move v0, v1
goto :goto_d
.end method
.method public static a(Ljava/lang/String;Z[Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p2, :cond_9
array-length v2, p2
if-lt v2, v0, :cond_9
if-nez p0, :cond_b
:cond_9
move v0, v1
:cond_a
:goto_a
return v0
:cond_b
array-length v3, p2
move v2, v1
:goto_d
if-lt v2, v3, :cond_11
move v0, v1
goto :goto_a
:cond_11
aget-object v4, p2, v2
if-eqz p1, :cond_1b
invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_a
:cond_1b
if-nez p1, :cond_23
invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_a
:cond_23
add-int/lit8 v2, v2, 0x1
goto :goto_d
.end method
.method public static b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "http://ex.mobmore.com/api/wap?sdk_version="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_39
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "&slot_id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_34
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_38
return-object v0
:cond_39
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_5b
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "&app_key="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_34
:cond_5b
const/4 v0, 0x0
goto :goto_38
.end method
.method public static d()Ljava/util/Map;
.registers 3
sget-object v0, Lcom/umeng/newxp/common/g;->d:Ljava/util/Map;
if-eqz v0, :cond_d
sget-object v0, Lcom/umeng/newxp/common/g;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
const/4 v1, 0x1
if-ge v0, v1, :cond_1f
:cond_d
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/umeng/newxp/common/g;->d:Ljava/util/Map;
sget-object v0, Lcom/umeng/newxp/common/g;->d:Ljava/util/Map;
const-string/jumbo v1, "Accept-Encoding"
const-string/jumbo v2, "gzip"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1f
sget-object v0, Lcom/umeng/newxp/common/g;->d:Ljava/util/Map;
return-object v0
.end method
.method public static e()I
.registers 3
const/4 v0, 0x0
:try_start_1
sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_a
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v1
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public static y(Landroid/content/Context;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_b
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;
:goto_a
return-object v0
:cond_b
const-string/jumbo v1, ""
:try_start_e
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
if-eqz v0, :cond_3a
iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v2, :cond_3a
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v2, "UMENG_CHANNEL"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3a
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_30
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_36
move-result-object v0
if-eqz v0, :cond_3a
:goto_33
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;
goto :goto_a
:catch_36
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_3a
move-object v0, v1
goto :goto_33
.end method