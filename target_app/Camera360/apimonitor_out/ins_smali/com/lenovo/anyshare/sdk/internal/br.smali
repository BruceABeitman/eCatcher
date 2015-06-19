.class public Lcom/lenovo/anyshare/sdk/internal/br;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalAppLoader.java"
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method private static a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 13
const/4 v8, 0x1
new-instance v2, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v2}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v5, "id"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "ver"
iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-eq p2, v5, :cond_24
sget-object v5, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-ne p2, v5, :cond_a9
:cond_24
invoke-static {p0, p3}, Lcom/lenovo/anyshare/sdk/internal/az;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_2c
iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
:cond_2c
const-string/jumbo v5, "name"
invoke-virtual {v2, v5, v1}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "file_path"
invoke-virtual {v2, v5, p3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
:goto_38
const-string/jumbo v5, "has_thumbnail"
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "is_exist"
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "package_name"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "version_code"
iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "version_name"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "category_location"
invoke-virtual {v2, v5, p2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "category_type"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/ax;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/ax$a;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-wide/16 v3, 0x0
new-instance v0, Ljava/io/File;
const-string/jumbo v5, "file_path"
const-string/jumbo v6, ""
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_99
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v3
:cond_99
const-string/jumbo v5, "file_size"
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v5, Lcom/lenovo/content/item/AppDataItem;
invoke-direct {v5, v2}, Lcom/lenovo/content/item/AppDataItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
return-object v5
:cond_a9
const-string/jumbo v5, "name"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v5, "file_path"
iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
invoke-virtual {v2, v5, v6}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
goto/16 :goto_38
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p1}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const-string/jumbo v2, "%s_%s.dat"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
aput-object p2, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->f(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method private static a(Ljava/util/List;Lcom/lenovo/anyshare/sdk/internal/ax$a;)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/content/base/ContentItem;
move-object v0, v3
check-cast v0, Lcom/lenovo/content/item/AppItem;
invoke-virtual {v0}, Lcom/lenovo/content/item/AppItem;->getCategoryType()Lcom/lenovo/anyshare/sdk/internal/ax$a;
move-result-object v4
if-eq v4, p1, :cond_9
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_22
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/AppDataItem;)V
.registers 4
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->getCategoryLocation()Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
move-result-object v0
sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-ne v0, v1, :cond_8
:cond_8
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/util/List;)V
.registers 10
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_d
:goto_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_2e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/content/pm/PackageInfo;
iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_d
sget-object v6, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const/4 v7, 0x0
invoke-static {p0, v4, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v2
if-eqz v2, :cond_d
invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_2e
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;)V
.registers 11
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_9
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_48
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/az;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v5
if-eqz v5, :cond_9
invoke-static {p0, v5, p3, v4}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/content/base/ContentItem;
if-nez v0, :cond_33
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
:cond_33
invoke-virtual {v2, v0}, Lcom/lenovo/content/base/ContentItem;->compareTo(Lcom/lenovo/content/base/ContentObject;)I
move-result v6
if-lez v6, :cond_9
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
:cond_48
invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v6
invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/AppDataItem;Z)Z
.registers 12
const/4 v6, 0x0
const/4 v7, 0x1
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->getCategoryLocation()Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
move-result-object v1
sget-object v8, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-eq v1, v8, :cond_b
:cond_a
:goto_a
return v6
:cond_b
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->hasSystemData()Z
move-result v8
if-eqz v8, :cond_1f
if-eqz p2, :cond_1d
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->getSystemDataPath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/bg;->b(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_2d
:cond_1d
move v6, v7
goto :goto_a
:cond_1f
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->getPackageName()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ay;->a(Ljava/lang/String;)J
move-result-wide v4
const-string/jumbo v8, ""
invoke-virtual {p1, v4, v5, v8}, Lcom/lenovo/content/item/AppDataItem;->setSystemData(JLjava/lang/String;)V
:cond_2d
if-eqz p2, :cond_43
invoke-virtual {p1}, Lcom/lenovo/content/item/AppDataItem;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-static {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_a
invoke-virtual {p1, v7}, Lcom/lenovo/content/item/AppDataItem;->setIsSystemDataExist(Z)V
invoke-virtual {p1, v3}, Lcom/lenovo/content/item/AppDataItem;->setSystemDataPath(Ljava/lang/String;)V
:cond_43
move v6, v7
goto :goto_a
.end method
.method private static b(Landroid/content/Context;Ljava/util/List;)V
.registers 4
const-string/jumbo v1, ".apk"
invoke-static {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
invoke-static {p0, v0, p1, v1}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;)V
return-void
.end method
.method public static c(Landroid/content/Context;)V
.registers 2
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/br$1;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/br$1;-><init>(Landroid/content/Context;)V
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;)Lcom/lenovo/anyshare/sdk/internal/be$c;
return-void
.end method
.method private static c(Landroid/content/Context;Ljava/util/List;)V
.registers 5
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->e(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, ".apk"
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
invoke-static {p0, v0, p1, v1}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;)V
goto :goto_6
.end method
.method public static d(Landroid/content/Context;)V
.registers 3
new-instance v0, Ljava/io/File;
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->f(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/io/File;)V
return-void
.end method
.method public static e(Landroid/content/Context;)Z
.registers 4
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "version.conf"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
return v1
.end method
.method public static f(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static g(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".zjapks/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 9
const/4 v2, 0x0
:try_start_1
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
sget-object v4, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SYSTEM:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
const/4 v5, 0x0
invoke-static {v3, v1, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/lenovo/content/item/AppItem$AppCategoryLocation;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
:try_end_14
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_16
move-result-object v2
:goto_15
return-object v2
:catch_16
move-exception v0
const-string/jumbo v3, "LocalContentLoader"
invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
.end method
.method protected b(Lcom/lenovo/content/base/ContentContainer;)V
.registers 13
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v4
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v8, "system/items"
invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_1c
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v3}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/util/List;)V
:cond_17
:goto_17
const/4 v8, 0x0
invoke-virtual {p1, v8, v3}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
return-void
:cond_1c
const-string/jumbo v8, "sdcard/items"
invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_2b
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v3}, Lcom/lenovo/anyshare/sdk/internal/br;->b(Landroid/content/Context;Ljava/util/List;)V
goto :goto_17
:cond_2b
const-string/jumbo v8, "zip/items"
invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_3a
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v3}, Lcom/lenovo/anyshare/sdk/internal/br;->c(Landroid/content/Context;Ljava/util/List;)V
goto :goto_17
:cond_3a
const-string/jumbo v8, "local_clone/items"
invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_72
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ak;->a(Landroid/content/Context;)Z
move-result v8
if-eqz v8, :cond_17
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ak;->b(Landroid/content/Context;)I
move-result v1
and-int/lit8 v8, v1, 0x2
if-eqz v8, :cond_64
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->b(Landroid/content/Context;Ljava/util/List;)V
:cond_64
and-int/lit8 v8, v1, 0x4
if-eqz v8, :cond_6d
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v7}, Lcom/lenovo/anyshare/sdk/internal/br;->c(Landroid/content/Context;Ljava/util/List;)V
:cond_6d
invoke-static {v5, v7}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v3
goto :goto_17
:cond_72
const-string/jumbo v8, "remote_clone/items"
invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_e8
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ak;->b(Landroid/content/Context;)I
move-result v1
and-int/lit8 v8, v1, 0x1
if-eqz v8, :cond_c0
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v6}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/util/List;)V
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/ax$a;->b:Lcom/lenovo/anyshare/sdk/internal/ax$a;
invoke-static {v6, v8}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Lcom/lenovo/anyshare/sdk/internal/ax$a;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_a3
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_c0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/content/base/ContentItem;
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
move-object v8, v2
check-cast v8, Lcom/lenovo/content/item/AppDataItem;
const/4 v10, 0x0
invoke-static {v9, v8, v10}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Lcom/lenovo/content/item/AppDataItem;Z)Z
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
check-cast v2, Lcom/lenovo/content/item/AppDataItem;
invoke-static {v8, v2}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Lcom/lenovo/content/item/AppDataItem;)V
goto :goto_a3
:cond_c0
and-int/lit8 v8, v1, 0x2
if-eqz v8, :cond_cf
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->b(Landroid/content/Context;Ljava/util/List;)V
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/ax$a;->b:Lcom/lenovo/anyshare/sdk/internal/ax$a;
invoke-static {v5, v8}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Lcom/lenovo/anyshare/sdk/internal/ax$a;)Ljava/util/List;
move-result-object v5
:cond_cf
and-int/lit8 v8, v1, 0x4
if-eqz v8, :cond_de
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v7}, Lcom/lenovo/anyshare/sdk/internal/br;->c(Landroid/content/Context;Ljava/util/List;)V
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/ax$a;->b:Lcom/lenovo/anyshare/sdk/internal/ax$a;
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Lcom/lenovo/anyshare/sdk/internal/ax$a;)Ljava/util/List;
move-result-object v7
:cond_de
invoke-static {v6, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v3
invoke-static {v3, v7}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v3
goto/16 :goto_17
:cond_e8
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v6}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Landroid/content/Context;Ljava/util/List;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->a:Landroid/content/Context;
invoke-static {v8, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->b(Landroid/content/Context;Ljava/util/List;)V
invoke-static {v6, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v3
goto/16 :goto_17
.end method
.method protected c(Lcom/lenovo/content/base/ContentContainer;)V
.registers 16
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v8
const-string/jumbo v10, "system"
invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_58
iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v11, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v12, "system/items"
invoke-virtual {v10, v11, v12}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v9
:goto_18
invoke-virtual {v9}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Landroid/util/SparseArray;
invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_2a
:cond_2a
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_9d
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/content/base/ContentItem;
move-object v2, v7
check-cast v2, Lcom/lenovo/content/item/AppItem;
invoke-virtual {v2}, Lcom/lenovo/content/item/AppItem;->getCategoryType()Lcom/lenovo/anyshare/sdk/internal/ax$a;
move-result-object v10
invoke-virtual {v10}, Lcom/lenovo/anyshare/sdk/internal/ax$a;->a()I
move-result v5
invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v10
if-nez v10, :cond_2a
sget-object v10, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
invoke-static {v8, v5}, Lcom/lenovo/content/base/ContentSource;->getCategoryPathById(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v11
invoke-virtual {p0, v10, v11, v5}, Lcom/lenovo/anyshare/sdk/internal/br;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;I)Lcom/lenovo/content/base/ContentContainer;
move-result-object v4
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
goto :goto_2a
:cond_58
const-string/jumbo v10, "sdcard"
invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_6d
iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v11, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v12, "sdcard/items"
invoke-virtual {v10, v11, v12}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v9
goto :goto_18
:cond_6d
const-string/jumbo v10, "zip"
invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_82
iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v11, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v12, "zip/items"
invoke-virtual {v10, v11, v12}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v9
goto :goto_18
:cond_82
new-instance v10, Lcom/lenovo/anyshare/sdk/internal/bm;
const/4 v11, 0x0
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v13, "Unsupport path:"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/bm;-><init>(ILjava/lang/String;)V
throw v10
:cond_9d
const/4 v10, 0x0
invoke-virtual {p1, v0, v10}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
return-void
.end method
.method protected d(Lcom/lenovo/content/base/ContentContainer;)V
.registers 14
instance-of v8, p1, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v2, p1
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v6
const-string/jumbo v8, "system"
invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_4e
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v9, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v10, "system/items"
invoke-virtual {v8, v9, v10}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v7
:goto_20
invoke-virtual {v7}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v0
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2d
:cond_2d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_93
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/content/base/ContentItem;
move-object v1, v4
check-cast v1, Lcom/lenovo/content/item/AppItem;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/bj;->a()I
move-result v8
invoke-virtual {v1}, Lcom/lenovo/content/item/AppItem;->getCategoryType()Lcom/lenovo/anyshare/sdk/internal/ax$a;
move-result-object v9
invoke-virtual {v9}, Lcom/lenovo/anyshare/sdk/internal/ax$a;->a()I
move-result v9
if-ne v8, v9, :cond_2d
invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2d
:cond_4e
const-string/jumbo v8, "sdcard"
invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_63
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v9, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v10, "sdcard/items"
invoke-virtual {v8, v9, v10}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v7
goto :goto_20
:cond_63
const-string/jumbo v8, "zip"
invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_78
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/br;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v9, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v10, "zip/items"
invoke-virtual {v8, v9, v10}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v7
goto :goto_20
:cond_78
new-instance v8, Lcom/lenovo/anyshare/sdk/internal/bm;
const/4 v9, 0x0
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "Unsupport path:"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/bm;-><init>(ILjava/lang/String;)V
throw v8
:cond_93
const/4 v8, 0x0
invoke-virtual {p1, v8, v5}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
return-void
.end method