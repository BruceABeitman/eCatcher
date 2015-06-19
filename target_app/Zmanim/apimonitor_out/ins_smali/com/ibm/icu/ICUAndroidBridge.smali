.class public Lcom/ibm/icu/ICUAndroidBridge;
.super Ljava/lang/Object;
.source "ICUAndroidBridge.java"
.field private static instance:Lcom/ibm/icu/ICUAndroidBridge;
.field private final assetManager:Landroid/content/res/AssetManager;
.method private constructor <init>(Landroid/content/res/AssetManager;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/ICUAndroidBridge;->assetManager:Landroid/content/res/AssetManager;
return-void
.end method
.method public static create(Landroid/content/res/AssetManager;)V
.registers 2
sget-object v0, Lcom/ibm/icu/ICUAndroidBridge;->instance:Lcom/ibm/icu/ICUAndroidBridge;
if-nez v0, :cond_b
new-instance v0, Lcom/ibm/icu/ICUAndroidBridge;
invoke-direct {v0, p0}, Lcom/ibm/icu/ICUAndroidBridge;-><init>(Landroid/content/res/AssetManager;)V
sput-object v0, Lcom/ibm/icu/ICUAndroidBridge;->instance:Lcom/ibm/icu/ICUAndroidBridge;
:cond_b
return-void
.end method
.method public static get()Lcom/ibm/icu/ICUAndroidBridge;
.registers 1
sget-object v0, Lcom/ibm/icu/ICUAndroidBridge;->instance:Lcom/ibm/icu/ICUAndroidBridge;
return-object v0
.end method
.method public list(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/ArrayList;
.registers 14
const/4 v10, 0x0
const-string v7, "/"
invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_14
const/4 v7, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v8
const/4 v9, 0x1
sub-int/2addr v8, v9
invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_14
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
:try_start_19
iget-object v7, p0, Lcom/ibm/icu/ICUAndroidBridge;->assetManager:Landroid/content/res/AssetManager;
invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
move-object v0, v3
array-length v5, v0
const/4 v4, 0x0
:goto_22
if-ge v4, v5, :cond_37
aget-object v2, v0, v4
const/4 v7, 0x0
invoke-interface {p2, v7, v2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_30
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_30} :catch_33
add-int/lit8 v4, v4, 0x1
goto :goto_22
:catch_33
move-exception v7
move-object v1, v7
move-object v7, v10
:goto_36
return-object v7
:cond_37
move-object v7, v6
goto :goto_36
.end method
.method public open(Ljava/lang/String;Z)Ljava/io/InputStream;
.registers 8
const-string v2, "/"
invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d
const/4 v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
:cond_d
:try_start_d
iget-object v2, p0, Lcom/ibm/icu/ICUAndroidBridge;->assetManager:Landroid/content/res/AssetManager;
invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_12
.catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_14
move-result-object v1
:goto_13
return-object v1
:catch_14
move-exception v2
move-object v0, v2
if-eqz p2, :cond_33
new-instance v2, Ljava/util/MissingResourceException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "could not locate data "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, ""
invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_33
const/4 v1, 0x0
goto :goto_13
.end method
.method public resourceExists(Ljava/lang/String;)Z
.registers 13
const/4 v10, 0x0
const/4 v9, 0x1
const-string v8, "/"
invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
const/4 v8, -0x1
if-eq v8, v6, :cond_36
sub-int v8, v6, v9
invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
:goto_15
const-string v8, "/"
invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_21
invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:cond_21
:try_start_21
iget-object v8, p0, Lcom/ibm/icu/ICUAndroidBridge;->assetManager:Landroid/content/res/AssetManager;
invoke-virtual {v8, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
move-object v0, v4
array-length v7, v0
const/4 v5, 0x0
:goto_2a
if-ge v5, v7, :cond_3e
aget-object v2, v0, v5
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_31
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_3d
move-result v8
if-eqz v8, :cond_3a
move v8, v9
:goto_35
return v8
:cond_36
const-string v1, ""
move-object v3, p1
goto :goto_15
:cond_3a
add-int/lit8 v5, v5, 0x1
goto :goto_2a
:catch_3d
move-exception v8
:cond_3e
move v8, v10
goto :goto_35
.end method