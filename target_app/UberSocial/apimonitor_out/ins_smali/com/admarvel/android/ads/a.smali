.class public Lcom/admarvel/android/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private static final c:Landroid/net/Uri;
.field private d:Lorg/json/JSONObject;
.field private e:Ljava/lang/String;
.field private f:I
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/admarvel/android/ads/ac;->c()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/admarvel/android/ads/a;->b:Ljava/lang/String;
const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/admarvel/android/ads/a;->c:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "VALUE_NOT_DEFINED"
iput-object v0, p0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
const/high16 v0, -0x8000
iput v0, p0, Lcom/admarvel/android/ads/a;->f:I
return-void
.end method
.method private a(Ljava/util/HashMap;)Lcom/admarvel/android/b/a/a;
.registers 7
const/4 v1, 0x0
const/4 v2, 0x1
:try_start_2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v3
if-lez v3, :cond_33
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v3
if-ne v3, v2, :cond_2d
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/a;
:goto_2c
return-object v0
:cond_2d
const/4 v2, 0x0
invoke-direct {p0, v0, v2}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;Z)Lcom/admarvel/android/b/a/a;
move-result-object v0
goto :goto_2c
:cond_33
move v0, v2
:goto_34
const/16 v3, 0xa
if-gt v0, v3, :cond_66
invoke-direct {p0, p1, v0}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;
move-result-object v3
invoke-virtual {v3}, Ljava/util/HashMap;->size()I
move-result v4
if-lez v4, :cond_63
invoke-virtual {v3}, Ljava/util/HashMap;->size()I
move-result v0
if-ne v0, v2, :cond_5d
invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/a;
goto :goto_2c
:cond_5d
const/4 v0, 0x1
invoke-direct {p0, v3, v0}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;Z)Lcom/admarvel/android/b/a/a;
move-result-object v0
goto :goto_2c
:cond_63
add-int/lit8 v0, v0, 0x1
goto :goto_34
:cond_66
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;I)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v3
if-lez v3, :cond_92
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v3
if-ne v3, v2, :cond_8c
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/a;
goto :goto_2c
:cond_8c
const/4 v2, 0x0
invoke-direct {p0, v0, v2}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;Z)Lcom/admarvel/android/b/a/a;
:try_end_90
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_94
move-result-object v0
goto :goto_2c
:cond_92
move-object v0, v1
goto :goto_2c
:catch_94
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Offline SDK:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Exception in offline getAdBasedOnWeightAndPriority"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v0, v1
goto/16 :goto_2c
.end method
.method private a(Ljava/util/HashMap;Z)Lcom/admarvel/android/b/a/a;
.registers 15
const-wide/high16 v10, 0x4059
const/high16 v4, 0x3f80
const/4 v3, 0x0
if-nez p2, :cond_89
:try_start_7
invoke-virtual {p1}, Ljava/util/HashMap;->size()I
move-result v0
const/4 v1, 0x2
filled-new-array {v0, v1}, [I
move-result-object v0
sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [[I
invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
move v4, v3
move v5, v3
:goto_22
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_57
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
aget-object v7, v0, v4
const/4 v8, 0x0
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/b/a/a;
invoke-virtual {v2}, Lcom/admarvel/android/b/a/a;->g()I
move-result v2
add-int/2addr v2, v5
aput v2, v7, v8
aget-object v2, v0, v4
const/4 v5, 0x1
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/b/a/a;
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->f()I
move-result v1
aput v1, v2, v5
aget-object v1, v0, v4
const/4 v2, 0x0
aget v2, v1, v2
add-int/lit8 v1, v4, 0x1
move v4, v1
move v5, v2
goto :goto_22
:cond_57
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
const/4 v2, 0x0
aget v1, v1, v2
add-int/lit8 v1, v1, 0x1
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v4
mul-double/2addr v4, v10
int-to-double v6, v1
mul-double/2addr v4, v6
int-to-double v1, v1
rem-double v1, v4, v1
double-to-int v1, v1
array-length v2, v0
:goto_6d
if-ge v3, v2, :cond_116
aget-object v4, v0, v3
const/4 v5, 0x0
aget v4, v4, v5
if-lt v4, v1, :cond_86
aget-object v0, v0, v3
const/4 v1, 0x1
aget v0, v0, v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/a;
:goto_85
return-object v0
:cond_86
add-int/lit8 v3, v3, 0x1
goto :goto_6d
:cond_89
invoke-virtual {p1}, Ljava/util/HashMap;->size()I
move-result v0
const/4 v1, 0x2
filled-new-array {v0, v1}, [I
move-result-object v0
sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [[F
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
move v5, v3
move v6, v1
:goto_a5
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_db
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
aget-object v8, v0, v5
const/4 v9, 0x0
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/b/a/a;
invoke-virtual {v2}, Lcom/admarvel/android/b/a/a;->c()F
move-result v2
add-float/2addr v2, v6
aput v2, v8, v9
aget-object v2, v0, v5
const/4 v6, 0x1
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/b/a/a;
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->f()I
move-result v1
int-to-float v1, v1
aput v1, v2, v6
aget-object v1, v0, v5
const/4 v2, 0x0
aget v2, v1, v2
add-int/lit8 v1, v5, 0x1
move v5, v1
move v6, v2
goto :goto_a5
:cond_db
array-length v1, v0
add-int/lit8 v1, v1, -0x1
aget-object v1, v0, v1
const/4 v2, 0x0
aget v1, v1, v2
add-float/2addr v1, v4
cmpg-float v2, v1, v4
if-gez v2, :cond_e9
move v1, v4
:cond_e9
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v4
mul-double/2addr v4, v10
float-to-double v6, v1
mul-double/2addr v4, v6
float-to-double v1, v1
rem-double v1, v4, v1
double-to-float v2, v1
array-length v4, v0
move v1, v3
:goto_f6
if-ge v1, v4, :cond_116
aget-object v3, v0, v1
const/4 v5, 0x0
aget v3, v3, v5
cmpl-float v3, v3, v2
if-ltz v3, :cond_113
aget-object v0, v0, v1
const/4 v1, 0x1
aget v0, v0, v1
float-to-int v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/b/a/a;
:try_end_111
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_111} :catch_119
goto/16 :goto_85
:cond_113
add-int/lit8 v1, v1, 0x1
goto :goto_f6
:cond_116
const/4 v0, 0x0
goto/16 :goto_85
:catch_119
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Offline SDK:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Exception in offline getAdBasedOnWeight"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_85
.end method
.method private a(Landroid/content/Context;)Ljava/lang/String;
.registers 8
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "aid"
aput-object v1, v2, v0
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/a;->c:Landroid/net/Uri;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_1d
:try_start_17
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_1a
.catchall {:try_start_17 .. :try_end_1a} :catchall_33
move-result v0
if-nez v0, :cond_23
:cond_1d
if-eqz v1, :cond_22
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_22
:cond_22
return-object v3
:cond_23
:try_start_23
const-string v0, "aid"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_2c
.catchall {:try_start_23 .. :try_end_2c} :catchall_33
move-result-object v3
if-eqz v1, :cond_22
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_22
:catchall_33
move-exception v0
if-eqz v1, :cond_39
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_39
throw v0
.end method
.method private a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;ZZZ)Ljava/lang/String;
.registers 24
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
:try_start_5
const-string v1, "||"
invoke-static {p5, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "site_id"
move-object/from16 v0, p7
invoke-static {v4, v1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "partner_id"
move-object/from16 v0, p6
invoke-static {v4, v1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "timeout"
const/16 v2, 0x1388
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "version"
const-string v2, "1.5"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "language"
const-string v2, "java"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "format"
const-string v2, "android"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "sdk_version"
const-string v2, "2.4.5.1"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "sdk_version_date"
const-string v2, "2014-07-28"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
if-eqz p13, :cond_239
const-string v1, "sdk_supported"
const-string v2, ""
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:goto_50
const-string v1, "device_model"
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "device_name"
sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "device_systemversion"
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "device_api_version"
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "retrynum"
invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "excluded_banners"
move-object/from16 v0, p9
invoke-static {v4, v1, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x2
if-ne p3, v1, :cond_24c
const-string v1, "device_orientation"
const-string v2, "landscape"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:goto_8c
const-string v1, "device_connectivity"
invoke-static {v4, v1, p4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I
move-result v3
if-lez v3, :cond_a9
const-string v1, "resolution_width"
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "max_image_width"
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_a9
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I
move-result v6
if-lez v6, :cond_c1
const-string v1, "resolution_height"
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "max_image_height"
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_c1
const-string v1, "device_density"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, ""
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F
move-result v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "device_os"
const-string v2, "Android"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_255
const-string v1, "adtype"
const-string v2, "banner"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_f3
:goto_f3
const/4 v1, 0x2
if-ne p3, v1, :cond_266
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
move-object v2, v1
:goto_fb
const/4 v1, 0x2
if-ne p3, v1, :cond_26d
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
:goto_102
new-instance v3, Lcom/admarvel/android/ads/ab;
move-object/from16 v0, p10
invoke-direct {v3, p2, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
const-string v6, "device_details"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "brand:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ",model:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ",width:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v7, ",height:"
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ",os:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ",ua:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v6, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_273
invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
:goto_163
if-eqz v1, :cond_170
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_170
const-string v2, "app_identifier"
invoke-static {v4, v2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_170
instance-of v1, p2, Landroid/app/Activity;
if-eqz v1, :cond_1d3
move-object v0, p2
check-cast v0, Landroid/app/Activity;
move-object v1, v0
if-eqz v1, :cond_1d3
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v6, 0xb
if-lt v2, v6, :cond_1ca
sget-object v2, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v2}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
:try_end_199
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_199} :catch_242
move-result v2
if-eqz v2, :cond_282
:try_start_19c
const-class v2, Landroid/view/ViewGroup;
const-string v6, "isHardwareAccelerated"
const/4 v7, 0x0
new-array v7, v7, [Ljava/lang/Class;
invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v6
const/4 v2, 0x0
check-cast v2, [Ljava/lang/Object;
invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_2a6
instance-of v2, v1, Ljava/lang/Boolean;
if-eqz v2, :cond_2a6
check-cast v1, Ljava/lang/Boolean;
:goto_1b6
:try_end_1b6
.catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b6} :catch_276
:try_start_1b6
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1c9
if-eqz p11, :cond_1c9
invoke-static {}, Lcom/admarvel/android/ads/ab;->c()Z
move-result v2
if-eqz v2, :cond_1c9
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_1c8
.catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c8} :catch_2a1
move-result-object v1
:cond_1c9
move-object v3, v1
:goto_1ca
:cond_1ca
:try_start_1ca
const-string v1, "hardware_accelerated"
invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_1d3
const-string v1, "ANDROID_ADVERTISING_ID"
invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_1e8
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_1e8
const-string v2, "android_advertising_id"
invoke-static {v4, v2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_1e8
invoke-static {p2}, Lcom/admarvel/android/ads/AdMarvelUtils;->isTabletDevice(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_291
const-string v1, "auto-scaling"
const-string v2, "true"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_tablet"
const-string v2, "false"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:goto_1fc
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const-string v2, "unknown-network"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_20d
const-string v2, "carriername"
invoke-static {v4, v2, v1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_20d
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_21e
const-string v1, "radiotech"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_21e
if-eqz p13, :cond_227
const-string v1, "force_pixel_track"
const-string v2, "true"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_227
if-eqz v5, :cond_234
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_234
const-string v1, "target_params"
invoke-static {v4, v1, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_234
:try_end_234
.catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_234} :catch_242
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_238
return-object v1
:try_start_239
:cond_239
const-string v1, "sdk_supported"
sget-object v2, Lcom/admarvel/android/ads/a;->b:Ljava/lang/String;
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:try_end_240
.catch Ljava/lang/Exception; {:try_start_239 .. :try_end_240} :catch_242
goto/16 :goto_50
:catch_242
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v1, 0x0
goto :goto_238
:try_start_24c
:cond_24c
const-string v1, "device_orientation"
const-string v2, "portrait"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_8c
:cond_255
sget-object v1, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f3
const-string v1, "adtype"
const-string v2, "interstitial"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_f3
:cond_266
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_fb
:cond_26d
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_102
:cond_273
const/4 v1, 0x0
goto/16 :goto_163
:catch_276
move-exception v1
move-object v2, v3
:goto_278
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v3, v2
goto/16 :goto_1ca
:cond_282
sget-object v1, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1ca
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
goto/16 :goto_1ca
:cond_291
const-string v1, "auto-scaling"
const-string v2, "false"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_tablet"
const-string v2, "true"
invoke-static {v4, v1, v2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:try_end_29f
.catch Ljava/lang/Exception; {:try_start_24c .. :try_end_29f} :catch_242
goto/16 :goto_1fc
:catch_2a1
move-exception v2
move-object v9, v2
move-object v2, v1
move-object v1, v9
goto :goto_278
:cond_2a6
move-object v1, v3
goto/16 :goto_1b6
.end method
.method private a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;Z)Ljava/lang/String;
.registers 28
if-nez p2, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
const-string v1, "/site_id_banner_map"
const-string v2, "/site_id_banner_map"
move-object/from16 v0, p2
invoke-static {v1, v2, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
if-nez v1, :cond_14
const/4 v1, 0x0
goto :goto_3
:cond_14
move-object/from16 v0, p8
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
if-nez v1, :cond_20
const/4 v1, 0x0
goto :goto_3
:cond_20
const-string v2, "/ad_link_object"
const-string v3, "/ad_link_object"
move-object/from16 v0, p2
invoke-static {v2, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v2
move-object v13, v2
check-cast v13, Ljava/util/HashMap;
if-nez v13, :cond_31
const/4 v1, 0x0
goto :goto_3
:cond_31
invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_39
:goto_39
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_53
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_39
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_39
:cond_53
move-object v1, p0
move-object v2, p1
move-object/from16 v3, p2
move/from16 v4, p4
move-object/from16 v5, p5
move-object/from16 v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
move/from16 v9, p9
move-object/from16 v10, p10
move-object/from16 v11, p12
move/from16 v12, p13
invoke-direct/range {v1 .. v12}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;Z)Ljava/util/HashMap;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Offline SDK:postString: &site_id="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p8
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "&partner_id="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p7
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object/from16 v0, p2
invoke-direct {p0, v0, v13, v1}, Lcom/admarvel/android/ads/a;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
move-result-object v1
if-nez v1, :cond_a0
const/4 v1, 0x0
goto/16 :goto_3
:cond_a0
invoke-direct {p0, v1}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;)Lcom/admarvel/android/b/a/a;
move-result-object v2
if-nez v2, :cond_a9
const/4 v1, 0x0
goto/16 :goto_3
:cond_a9
const-string v1, "/banner_folder_map"
const-string v3, "/banner_folder_map"
move-object/from16 v0, p2
invoke-static {v1, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
if-nez v1, :cond_ba
const/4 v1, 0x0
goto/16 :goto_3
:cond_ba
invoke-virtual {v2}, Lcom/admarvel/android/b/a/a;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "admarvel_preferences"
const/4 v3, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
if-nez v2, :cond_d6
const/4 v1, 0x0
goto/16 :goto_3
:cond_d6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "childDirectory"
const-string v5, "NULL"
invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v4, "banner_folder"
invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
if-eqz v1, :cond_13b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "_"
invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v4, 0x0
aget-object v1, v1, v4
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".xml"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Offline SDK:Admarvel XML Response:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_3
:cond_13b
const/4 v1, 0x0
goto/16 :goto_3
.end method
.method private a(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
.registers 13
const/4 v3, 0x0
:try_start_1
const-string v0, "/banner_folder_map"
const-string v1, "/banner_folder_map"
invoke-static {v0, v1, p1}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
if-nez v0, :cond_f
move-object p2, v3
:cond_e
:goto_e
return-object p2
:cond_f
invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_17
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/b/a/a;
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->e()Ljava/util/HashMap;
move-result-object v5
const-string v2, "admarvel_preferences"
const/4 v6, 0x0
invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "childDirectory"
const-string v8, "NULL"
invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, "/"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, "/"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->f()I
move-result v6
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, ".xml"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Offline SDK:Path of banner selected"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v6, Ljava/io/File;
invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v6
if-nez v6, :cond_d9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Offline SDK:Ad rejected beacause it is not downloaded yet"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/Iterator;->remove()V
:try_end_b3
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b5
goto/16 :goto_17
:catch_b5
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Offline SDK:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Exception in offline discardNonMatchingAd "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object p2, v3
goto/16 :goto_e
:try_start_d9
:cond_d9
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->b()J
move-result-wide v6
invoke-direct {p0, v6, v7}, Lcom/admarvel/android/ads/a;->a(J)Z
move-result v2
if-eqz v2, :cond_ed
const-string v1, "Offline SDK:Ad rejected beacause it is Expired "
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/Iterator;->remove()V
goto/16 :goto_17
:cond_ed
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->a()J
move-result-wide v1
invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/a;->b(J)Z
move-result v1
if-nez v1, :cond_101
const-string v1, "Offline SDK:Ad rejected beacause campaign not started yet"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/Iterator;->remove()V
goto/16 :goto_17
:cond_101
if-eqz v5, :cond_17
invoke-direct {p0, v5, p3}, Lcom/admarvel/android/ads/a;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Z
move-result v1
if-nez v1, :cond_17
const-string v1, "Offline SDK:Ad rejected beacause targetOption doesnot matched"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-interface {v4}, Ljava/util/Iterator;->remove()V
:try_end_111
.catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_111} :catch_b5
goto/16 :goto_17
.end method
.method private a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;Z)Ljava/util/HashMap;
.registers 20
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
if-nez p2, :cond_c
const/4 v1, 0x0
:goto_8
if-nez v1, :cond_14
const/4 v1, 0x0
:goto_b
return-object v1
:try_start_c
:cond_c
const-string v1, "admarvel_preferences"
const/4 v2, 0x0
invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
goto :goto_8
:cond_14
const-string v2, "country_code"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_31
const-string v2, "country_code"
const-string v4, "country_code"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_31
const-string v2, "region"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4e
const-string v2, "region"
const-string v4, "region"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4e
const-string v2, "city"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6b
const-string v2, "city"
const-string v4, "city"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_6b
const-string v2, "postal_code"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_88
const-string v2, "postal_code"
const-string v4, "postal_code"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_88
const-string v2, "latitude"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_a5
const-string v2, "latitude"
const-string v4, "latitude"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a5
const-string v2, "longitude"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c2
const-string v2, "longitude"
const-string v4, "longitude"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_c2
const-string v2, "dma_code"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_df
const-string v2, "dma_code"
const-string v4, "dma_code"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_df
const-string v2, "area_code"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_fc
const-string v2, "area_code"
const-string v4, "area_code"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_fc
const-string v2, "carrier"
const-string v4, "NULL"
invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "NULL"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_119
const-string v2, "carrier"
const-string v4, "carrier"
const-string v5, "NULL"
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_119
const-string v1, "sdk_version"
const-string v2, "2.4.5.1"
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "device_model"
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "device_name"
sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "device_systemversion"
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "sdk_version_date"
const-string v2, "2014-07-28"
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "sdk_supported"
sget-object v2, Lcom/admarvel/android/ads/a;->b:Ljava/lang/String;
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "retrynum"
invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "excluded_banners"
move-object/from16 v0, p9
invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I
move-result v1
if-lez v1, :cond_16b
const-string v2, "resolution_width"
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "max_image_width"
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_16b
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I
move-result v1
if-lez v1, :cond_183
const-string v2, "resolution_height"
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "max_image_height"
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_183
const-string v1, "device_density"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, ""
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p2}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F
move-result v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "device_os"
const-string v2, "Android"
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21e
const-string v1, "adtype"
const-string v2, "banner"
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1b5
:goto_1b5
instance-of v1, p2, Landroid/app/Activity;
if-eqz v1, :cond_216
check-cast p2, Landroid/app/Activity;
if-eqz p2, :cond_216
invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v5, 0xb
if-lt v2, v5, :cond_20d
sget-object v2, Lcom/admarvel/android/ads/a$a;->a:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v2}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
:try_end_1dc
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_1dc} :catch_22e
move-result v2
if-eqz v2, :cond_244
:try_start_1df
const-class v2, Landroid/view/ViewGroup;
const-string v5, "isHardwareAccelerated"
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v5
const/4 v2, 0x0
check-cast v2, [Ljava/lang/Object;
invoke-virtual {v5, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_257
instance-of v2, v1, Ljava/lang/Boolean;
if-eqz v2, :cond_257
check-cast v1, Ljava/lang/Boolean;
:goto_1f9
:try_end_1f9
.catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1f9} :catch_239
:try_start_1f9
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_20c
if-eqz p11, :cond_20c
invoke-static {}, Lcom/admarvel/android/ads/ab;->c()Z
move-result v2
if-eqz v2, :cond_20c
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_20b
.catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_20b} :catch_252
move-result-object v1
:cond_20c
move-object v4, v1
:try_start_20d
:cond_20d
:goto_20d
const-string v1, "hardware_accelerated"
invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_216
if-eqz p5, :cond_21b
invoke-virtual {v3, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
:cond_21b
move-object v1, v3
goto/16 :goto_b
:cond_21e
sget-object v1, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b5
const-string v1, "adtype"
const-string v2, "interstitial"
invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_22d
.catch Ljava/lang/Exception; {:try_start_20d .. :try_end_22d} :catch_22e
goto :goto_1b5
:catch_22e
move-exception v1
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v1, 0x0
goto/16 :goto_b
:catch_239
move-exception v1
move-object v2, v4
:try_start_23b
:goto_23b
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v4, v2
goto :goto_20d
:cond_244
sget-object v1, Lcom/admarvel/android/ads/a$a;->b:Lcom/admarvel/android/ads/a$a;
invoke-virtual {p1, v1}, Lcom/admarvel/android/ads/a$a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20d
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_250
.catch Ljava/lang/Exception; {:try_start_23b .. :try_end_250} :catch_22e
move-result-object v4
goto :goto_20d
:catch_252
move-exception v2
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto :goto_23b
:cond_257
move-object v1, v4
goto :goto_1f9
.end method
.method private a(Ljava/util/HashMap;I)Ljava/util/HashMap;
.registers 8
:try_start_0
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
:cond_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/b/a/a;
invoke-virtual {v1}, Lcom/admarvel/android/b/a/a;->d()I
move-result v4
if-ne v4, p2, :cond_d
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29
goto :goto_d
:catch_29
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Offline SDK:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Exception in offline filterAdsByCampaignPriority"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_4b
return-object v0
:cond_4c
move-object v0, v2
goto :goto_4b
.end method
.method private a(J)Z
.registers 6
const/4 v0, 0x0
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-gez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
cmp-long v1, p1, v1
if-gez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
:try_start_2
const-string v2, "-?[0-9]+"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_35
const-string v2, "-?[0-9]+"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_35
invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
if-le v2, v3, :cond_69
:goto_34
:cond_34
return v0
:cond_35
const-string v2, "^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_6b
const-string v2, "^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_6b
invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v2
invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
move-result-wide v4
cmpl-double v2, v2, v4
if-gtz v2, :cond_34
:cond_69
move v0, v1
goto :goto_34
:cond_6b
invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
:try_end_6e
.catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6e} :catch_72
.catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_6e} :catch_95
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_b9
move-result v2
if-lez v2, :cond_69
goto :goto_34
:catch_72
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Offline SDK:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Exception in offline isGreater "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v1
goto :goto_34
:catch_95
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Offline SDK:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Exception in offline isGreater "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_34
:catch_b9
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Offline SDK:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "Exception in offline isGreater "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_34
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
:try_start_2
const-string v2, "=="
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_11
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1f
:cond_10
:goto_10
return v0
:cond_11
const-string v2, "!="
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10
:cond_1f
move v0, v1
goto :goto_10
:cond_21
const-string v2, "gt"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_35
invoke-direct {p0, p3, p2}, Lcom/admarvel/android/ads/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_33
move v2, v1
:goto_30
if-eqz v2, :cond_1f
goto :goto_10
:cond_33
move v2, v0
goto :goto_30
:cond_35
const-string v2, "lt"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_44
invoke-direct {p0, p3, p2}, Lcom/admarvel/android/ads/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1f
goto :goto_10
:cond_44
const-string v2, "=x"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_53
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1f
goto :goto_10
:cond_53
const-string v2, "!x"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_62
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
goto :goto_10
:cond_62
const-string v2, "=~"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1f
goto :goto_10
:cond_71
const-string v2, "!~"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7c} :catch_80
move-result v2
if-eqz v2, :cond_1f
goto :goto_10
:catch_80
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Exception in offline comparatorCheck "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_10
.end method
.method private a(Ljava/util/HashMap;Ljava/util/HashMap;)Z
.registers 11
const/4 v3, 0x1
const/4 v2, 0x0
:try_start_2
invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_46
invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_26
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
const/4 v6, 0x0
aget-object v6, v1, v6
const/4 v7, 0x1
aget-object v7, v1, v7
invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0, v6, v7, v1}, Lcom/admarvel/android/ads/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:try_end_41
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_4a
move-result v1
if-nez v1, :cond_26
move v0, v2
:goto_45
return v0
:cond_46
move v0, v2
goto :goto_45
:cond_48
move v0, v3
goto :goto_45
:catch_4a
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Offline SDK:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "Exception in offline isValidAd "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v2
goto :goto_45
.end method
.method private b(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "FBATTRID:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method private b(J)Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
cmp-long v0, p1, v0
if-gtz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
:try_start_1
const-string v1, "-?[0-9]+"
invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_34
const-string v1, "-?[0-9]+"
invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_34
invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-lt v1, v2, :cond_68
:goto_33
:cond_33
return v0
:cond_34
const-string v1, "^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$"
invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_6a
const-string v1, "^[-]?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?$"
invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_6a
invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
move-result-wide v3
cmpl-double v1, v1, v3
if-gez v1, :cond_33
:cond_68
const/4 v0, 0x1
goto :goto_33
:cond_6a
invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
:try_end_6d
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6d} :catch_71
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6d} :catch_93
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_b6
move-result v1
if-gez v1, :cond_68
goto :goto_33
:catch_71
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Exception in offline isLessThan "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_33
:catch_93
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Exception in offline isLessThan "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_33
:catch_b6
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Offline SDK:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Exception in offline isLessThan "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_33
.end method
.method public a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZ)Ljava/lang/String;
.registers 18
if-nez p2, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
if-eqz p6, :cond_10
:try_start_b
monitor-enter p6
:try_start_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_c} :catch_44
invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
monitor-exit p6
:cond_10
:try_end_10
.catchall {:try_start_c .. :try_end_10} :catchall_41
const/4 v0, 0x1
if-ne p11, v0, :cond_4e
:try_start_13
const-string v0, "RESPONSE_TYPE"
const-string v2, "xml"
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_44
:try_start_1a
:goto_1a
invoke-direct {p0, p2}, Lcom/admarvel/android/ads/a;->b(Landroid/content/Context;)Ljava/lang/String;
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_56
move-result-object v0
:goto_1e
if-eqz v0, :cond_2d
:try_start_20
const-string v2, "RTBID"
invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_2d
const-string v2, "RTBID"
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2d
if-eqz p3, :cond_3c
const-string v0, "UNIQUE_ID"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_3c
const-string v0, "UNIQUE_ID"
invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_44
:cond_3c
invoke-direct/range {p0 .. p13}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;Z)Ljava/lang/String;
move-result-object v0
goto :goto_3
:catchall_41
move-exception v0
:try_start_42
monitor-exit p6
:try_end_43
.catchall {:try_start_42 .. :try_end_43} :catchall_41
:try_start_43
throw v0
:try_end_44
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44
:catch_44
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_3
:try_start_4e
:cond_4e
const-string v0, "RESPONSE_TYPE"
const-string v2, "xml_with_xhtml"
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_55
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_44
goto :goto_1a
:catch_56
move-exception v0
const/4 v0, 0x0
goto :goto_1e
.end method
.method public a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Handler;ZZZ)Ljava/lang/String;
.registers 34
const/16 v17, 0x0
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
if-nez p2, :cond_b
const/4 v2, 0x0
:goto_a
return-object v2
:cond_b
if-eqz p6, :cond_14
:try_start_d
monitor-enter p6
:try_end_e
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_e0
:try_start_e
move-object/from16 v0, p6
invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
monitor-exit p6
:cond_14
:try_end_14
.catchall {:try_start_e .. :try_end_14} :catchall_dd
const/4 v2, 0x1
move/from16 v0, p11
if-ne v0, v2, :cond_eb
:try_start_19
const-string v2, "RESPONSE_TYPE"
const-string v3, "xml"
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_20
:try_end_20
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_e0
:goto_20
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/admarvel/android/ads/a;->b(Landroid/content/Context;)Ljava/lang/String;
:try_end_27
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_f4
move-result-object v2
:goto_28
if-eqz v2, :cond_37
:try_start_2a
const-string v3, "RTBID"
invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_37
const-string v3, "RTBID"
invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_37
invoke-static/range {p2 .. p2}, Lcom/admarvel/android/util/e;->c(Landroid/content/Context;)Lcom/admarvel/android/util/e;
move-result-object v2
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Lcom/admarvel/android/util/e;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iput-object v3, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Lcom/admarvel/android/util/e;->a(Landroid/content/Context;)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Lcom/admarvel/android/ads/a;->f:I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
if-eqz v2, :cond_f8
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
const-string v3, "VALUE_NOT_DEFINED"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_f8
const-string v2, "ANDROID_ADVERTISING_ID"
move-object/from16 v0, p0
iget-object v3, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "ANDROID_ADVERTISING_ID_OPT_OUT"
move-object/from16 v0, p0
iget v3, v0, Lcom/admarvel/android/ads/a;->f:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_77
const-string v2, "UNIQUE_ID"
invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_9a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
if-eqz v2, :cond_103
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
const-string v3, "VALUE_NOT_DEFINED"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_103
const-string v2, "UNIQUE_ID"
move-object/from16 v0, p0
iget-object v3, v0, Lcom/admarvel/android/ads/a;->e:Ljava/lang/String;
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9a
:try_end_9a
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_9a} :catch_e0
:cond_9a
const-string v16, ""
move-object/from16 v2, p0
move-object/from16 v3, p1
move-object/from16 v4, p2
move/from16 v5, p4
move-object/from16 v6, p5
move-object/from16 v8, p7
move-object/from16 v9, p8
move/from16 v10, p9
move-object/from16 v11, p10
move-object/from16 v12, p12
move/from16 v13, p13
move/from16 v14, p14
move/from16 v15, p15
invoke-direct/range {v2 .. v15}, Lcom/admarvel/android/ads/a;->a(Lcom/admarvel/android/ads/a$a;Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;ZZZ)Ljava/lang/String;
move-result-object v3
:try_start_ba
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "postString: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "UTF-8"
invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_d6
.catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d6} :catch_10d
:goto_d6
sput-object v3, Lcom/admarvel/android/ads/a;->a:Ljava/lang/String;
if-nez v3, :cond_125
const/4 v2, 0x0
goto/16 :goto_a
:catchall_dd
move-exception v2
:try_start_de
monitor-exit p6
:try_end_df
.catchall {:try_start_de .. :try_end_df} :catchall_dd
:try_start_df
throw v2
:try_end_e0
.catch Ljava/lang/Exception; {:try_start_df .. :try_end_e0} :catch_e0
:catch_e0
move-exception v2
invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v2, 0x0
goto/16 :goto_a
:cond_eb
:try_start_eb
const-string v2, "RESPONSE_TYPE"
const-string v3, "xml_with_xhtml"
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_20
:catch_f4
move-exception v2
const/4 v2, 0x0
goto/16 :goto_28
:cond_f8
const-string v2, "ANDROID_ID"
invoke-static/range {p2 .. p2}, Lcom/admarvel/android/util/OptionalUtils;->getId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_77
:cond_103
const-string v2, "UNIQUE_ID"
invoke-static/range {p2 .. p2}, Lcom/admarvel/android/util/OptionalUtils;->getId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_10c
.catch Ljava/lang/Exception; {:try_start_eb .. :try_end_10c} :catch_e0
goto :goto_9a
:catch_10d
move-exception v2
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "postString: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_d6
:cond_125
:try_start_125
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
new-instance v2, Ljava/text/SimpleDateFormat;
const-string v4, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v4, "GMT+00:00"
invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v4, Ljava/text/SimpleDateFormat;
const-string v5, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v5
invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
const-string v8, "data"
invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
const-string v8, "timestamp"
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
const-string v7, "utc"
invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
const-string v6, "local"
invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_start_185
:goto_185
:try_end_185
.catch Ljava/lang/Exception; {:try_start_125 .. :try_end_185} :catch_24c
new-instance v2, Ljava/net/URL;
const-string v4, "http://ads.admarvel.com/fam/androidGetAd.php"
invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v2
check-cast v2, Ljava/net/HttpURLConnection;
const-string v4, "POST"
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/4 v4, 0x0
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
new-instance v4, Lcom/admarvel/android/ads/ab;
move-object/from16 v0, p2
move-object/from16 v1, p12
invoke-direct {v4, v0, v1}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
const-string v5, "User-Agent"
invoke-virtual {v4}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "Content-Type"
const-string v5, "application/x-www-form-urlencoded"
invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "Content-Length"
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v4, 0x7d0
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v4, 0x2710
invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v4
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v3
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Connection Status Code: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Content Length: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/16 v4, 0xc8
if-ne v3, v4, :cond_29e
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/io/InputStream;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/16 v4, 0x2000
move v3, v4
move/from16 v5, v17
:cond_226
:goto_226
const/4 v7, -0x1
if-eq v3, v7, :cond_252
new-array v7, v4, [B
const/4 v3, 0x0
invoke-virtual {v2, v7, v3, v4}, Ljava/io/InputStream;->read([BII)I
move-result v3
if-lez v3, :cond_226
new-instance v8, Lcom/admarvel/android/ads/a$b;
const/4 v9, 0x0
invoke-direct {v8, v9}, Lcom/admarvel/android/ads/a$b;-><init>(Lcom/admarvel/android/ads/a$1;)V
iput-object v7, v8, Lcom/admarvel/android/ads/a$b;->a:[B
iput v3, v8, Lcom/admarvel/android/ads/a$b;->b:I
add-int/2addr v5, v3
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_240
.catch Ljava/lang/Exception; {:try_start_185 .. :try_end_240} :catch_241
goto :goto_226
:catch_241
move-exception v2
invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v2, 0x0
goto/16 :goto_a
:catch_24c
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_185
:try_start_252
:cond_252
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
if-lez v5, :cond_29e
new-array v5, v5, [B
const/4 v3, 0x0
const/4 v2, 0x0
move v4, v3
move v3, v2
:goto_25d
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v2
if-ge v3, v2, :cond_278
invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/a$b;
iget-object v7, v2, Lcom/admarvel/android/ads/a$b;->a:[B
const/4 v8, 0x0
iget v9, v2, Lcom/admarvel/android/ads/a$b;->b:I
invoke-static {v7, v8, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v2, v2, Lcom/admarvel/android/ads/a$b;->b:I
add-int/2addr v4, v2
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_25d
:cond_278
new-instance v2, Ljava/lang/String;
invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V
:goto_27d
:try_end_27d
.catch Ljava/lang/Exception; {:try_start_252 .. :try_end_27d} :catch_241
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Admarvel XML Response:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
new-instance v4, Ljava/lang/String;
invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_a
:cond_29e
move-object/from16 v2, v16
goto :goto_27d
.end method
.method public a()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/a;->d:Lorg/json/JSONObject;
return-object v0
.end method