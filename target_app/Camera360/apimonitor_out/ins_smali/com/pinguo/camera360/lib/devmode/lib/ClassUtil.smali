.class public Lcom/pinguo/camera360/lib/devmode/lib/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static listActivity(Landroid/content/Context;)Ljava/util/List;
.registers 9
const-class v6, Lcom/pinguo/camera360/test/TestPackage;
invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v6
invoke-static {p0, v6}, Lcom/pinguo/camera360/lib/devmode/lib/ClassUtil;->listClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
move-result-object v4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_17
:goto_17
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_1e
return-object v1
:cond_1e
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
:try_start_24
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v5
instance-of v7, v5, Landroid/app/Activity;
if-eqz v7, :cond_17
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_33
.catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_33} :catch_34
.catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_33} :catch_39
.catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_33} :catch_3e
goto :goto_17
:catch_34
move-exception v2
invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
goto :goto_17
:catch_39
move-exception v2
invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V
goto :goto_17
:catch_3e
move-exception v2
invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
goto :goto_17
.end method
.method public static listClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
.registers 7
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ldalvik/system/DexFile;
invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v4}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;
move-result-object v2
:cond_12
:goto_12
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v4
if-nez v4, :cond_19
return-object v3
:cond_19
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_12
const-string/jumbo v4, "$"
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-gez v4, :cond_12
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_12
.end method