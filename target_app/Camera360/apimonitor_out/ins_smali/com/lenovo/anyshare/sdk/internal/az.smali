.class public final Lcom/lenovo/anyshare/sdk/internal/az;
.super Ljava/lang/Object;
.source "PackageExtractor.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.registers 5
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_8
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v1
:goto_9
return-object v1
:catch_a
move-exception v0
const/4 v1, 0x0
goto :goto_9
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.registers 5
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v2
:goto_9
return-object v2
:catch_a
move-exception v0
const/4 v2, 0x0
goto :goto_9
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.registers 6
const/4 v2, 0x0
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v0
if-eqz v0, :cond_11
iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
if-eqz v3, :cond_11
iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I
if-gtz v3, :cond_12
:goto_11
:cond_11
return-object v2
:cond_12
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
move-result-object v1
if-eqz v1, :cond_11
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
goto :goto_11
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
move-result-object v0
if-nez v0, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
if-nez v2, :cond_f
iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
goto :goto_7
:cond_f
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;
if-eqz v2, :cond_1e
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_7
:cond_1e
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I
if-eqz v2, :cond_3b
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
move-result-object v1
if-eqz v1, :cond_3b
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
goto :goto_7
:cond_3b
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
if-eqz v2, :cond_4a
iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_7
:cond_4a
iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
goto :goto_7
.end method
.method private static e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
.registers 14
const-string/jumbo v5, "android.content.res.AssetManager"
:try_start_3
new-instance v7, Landroid/util/DisplayMetrics;
invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v7}, Landroid/util/DisplayMetrics;->setToDefaults()V
invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v3
const/4 v10, 0x1
new-array v1, v10, [Ljava/lang/Class;
const/4 v10, 0x0
const-class v11, Ljava/lang/String;
aput-object v11, v1, v10
const-string/jumbo v10, "addAssetPath"
invoke-virtual {v4, v10, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v10, 0x1
new-array v2, v10, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object p1, v2, v10
invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
const/4 v10, 0x3
new-array v1, v10, [Ljava/lang/Class;
const/4 v10, 0x0
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v11
aput-object v11, v1, v10
const/4 v10, 0x1
invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v11
aput-object v11, v1, v10
const/4 v10, 0x2
invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v11
aput-object v11, v1, v10
const-class v10, Landroid/content/res/Resources;
invoke-virtual {v10, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v9
const/4 v10, 0x3
new-array v2, v10, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object v3, v2, v10
const/4 v10, 0x1
invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v11
aput-object v11, v2, v10
const/4 v10, 0x2
invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v11
aput-object v11, v2, v10
invoke-virtual {v9, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/content/res/Resources;
:try_end_6f
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_70
:goto_6f
return-object v10
:catch_70
move-exception v6
const-string/jumbo v10, "PackageExtractor"
invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v10, 0x0
goto :goto_6f
.end method