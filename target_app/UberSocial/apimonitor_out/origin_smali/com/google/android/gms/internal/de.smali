.class public final Lcom/google/android/gms/internal/de;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/de;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Ljava/lang/String;)Lcom/google/android/gms/internal/cf;
    .registers 24

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ad_url"

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ad_size"

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "ad_html"

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v17, -0x1

    const-string v2, "interstitial_timeout"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "interstitial_timeout"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v6, v10

    double-to-long v7, v6

    :goto_3a
    const-string v2, "orientation"

    const/4 v6, 0x0

    invoke-virtual {v9, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, -0x1

    const-string v6, "portrait"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-static {}, Lcom/google/android/gms/internal/ds;->c()I

    move-result v15

    :cond_4e
    :goto_4e
    const/4 v2, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15a

    const-string v2, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    :goto_66
    return-object v2

    :cond_67
    const-wide/16 v7, -0x1

    goto :goto_3a

    :cond_6a
    const-string v6, "landscape"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/google/android/gms/internal/ds;->b()I

    move-result v15

    goto :goto_4e

    :cond_77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cf;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/cf;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;

    iget-wide v0, v2, Lcom/google/android/gms/internal/cf;->n:J

    move-wide/from16 v17, v0

    move-object v10, v2

    :goto_92
    const-string v2, "click_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v10, :cond_e3

    const/4 v2, 0x0

    :goto_9b
    if-eqz v6, :cond_158

    if-nez v2, :cond_a4

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_a4
    const/4 v5, 0x0

    :goto_a5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_e6

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :cond_b5
    const-string v2, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c0} :catch_c1

    goto :goto_66

    :catch_c1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse the mediation config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    goto :goto_66

    :cond_e3
    :try_start_e3
    iget-object v2, v10, Lcom/google/android/gms/internal/cf;->d:Ljava/util/List;

    goto :goto_9b

    :cond_e6
    move-object v5, v2

    :goto_e7
    const-string v2, "impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_10a

    const/4 v2, 0x0

    :goto_f0
    if-eqz v11, :cond_156

    if-nez v2, :cond_f9

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_f9
    const/4 v6, 0x0

    :goto_fa
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_10d

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_fa

    :cond_10a
    iget-object v2, v10, Lcom/google/android/gms/internal/cf;->f:Ljava/util/List;

    goto :goto_f0

    :cond_10d
    move-object v6, v2

    :goto_10e
    const-string v2, "manual_impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_131

    const/4 v2, 0x0

    :goto_117
    if-eqz v11, :cond_154

    if-nez v2, :cond_120

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_120
    const/4 v9, 0x0

    :goto_121
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_134

    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_121

    :cond_131
    iget-object v2, v10, Lcom/google/android/gms/internal/cf;->j:Ljava/util/List;

    goto :goto_117

    :cond_134
    move-object v12, v2

    :goto_135
    if-eqz v10, :cond_148

    iget v2, v10, Lcom/google/android/gms/internal/cf;->l:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_13e

    iget v15, v10, Lcom/google/android/gms/internal/cf;->l:I

    :cond_13e
    iget-wide v13, v10, Lcom/google/android/gms/internal/cf;->g:J

    const-wide/16 v19, 0x0

    cmp-long v2, v13, v19

    if-lez v2, :cond_148

    iget-wide v7, v10, Lcom/google/android/gms/internal/cf;->g:J

    :cond_148
    new-instance v2, Lcom/google/android/gms/internal/cf;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v13, -0x1

    invoke-direct/range {v2 .. v18}, Lcom/google/android/gms/internal/cf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V
    :try_end_152
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_152} :catch_c1

    goto/16 :goto_66

    :cond_154
    move-object v12, v2

    goto :goto_135

    :cond_156
    move-object v6, v2

    goto :goto_10e

    :cond_158
    move-object v5, v2

    goto :goto_e7

    :cond_15a
    move-object v10, v2

    goto/16 :goto_92
.end method

.method private static a(Z)Ljava/lang/Integer;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/dh;Landroid/location/Location;)Ljava/lang/String;
    .registers 14

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x2

    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    const-string v0, "ad_pos"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/de;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/z;)V

    const-string v0, "format"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v1, v1, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget v0, v0, Lcom/google/android/gms/internal/ab;->f:I

    if-ne v0, v10, :cond_2e

    const-string v0, "smart_w"

    const-string v1, "full"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget v0, v0, Lcom/google/android/gms/internal/ab;->c:I

    if-ne v0, v9, :cond_3b

    const-string v0, "smart_h"

    const-string v1, "auto"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;

    if-eqz v0, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v4, v0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_4d
    if-ge v1, v5, :cond_87

    aget-object v6, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    iget v0, v6, Lcom/google/android/gms/internal/ab;->f:I

    if-ne v0, v10, :cond_81

    iget v0, v6, Lcom/google/android/gms/internal/ab;->g:I

    int-to-float v0, v0

    iget v7, p1, Lcom/google/android/gms/internal/dh;->q:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/google/android/gms/internal/ab;->c:I

    if-ne v0, v9, :cond_84

    iget v0, v6, Lcom/google/android/gms/internal/ab;->d:I

    int-to-float v0, v0

    iget v6, p1, Lcom/google/android/gms/internal/dh;->q:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    :goto_7a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    :cond_81
    iget v0, v6, Lcom/google/android/gms/internal/ab;->f:I

    goto :goto_67

    :cond_84
    iget v0, v6, Lcom/google/android/gms/internal/ab;->c:I

    goto :goto_7a

    :cond_87
    const-string v0, "sz"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_ad

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->g:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    const-string v0, "ms"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/de;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/dh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget v0, v0, Lcom/google/android/gms/internal/z;->a:I

    if-lt v0, v8, :cond_e1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget-object v0, v0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget-object v0, v0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/de;->a(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_e1
    iget v0, p0, Lcom/google/android/gms/internal/cd;->a:I

    if-lt v0, v8, :cond_ec

    const-string v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->l:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ec
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(I)Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Request JSON: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    :cond_112
    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_119} :catch_11b

    move-result-object v0

    :goto_11a
    return-object v0

    :catch_11b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_11a
.end method

.method private static a(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 10

    const-wide v6, 0x416312d000000000L

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/am;)V
    .registers 5

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/am;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/internal/am;->b:I

    invoke-static {v2}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v1, p1, Lcom/google/android/gms/internal/am;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/internal/am;->c:I

    invoke-static {v2}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v1, p1, Lcom/google/android/gms/internal/am;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    iget v1, p1, Lcom/google/android/gms/internal/am;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/internal/am;->d:I

    invoke-static {v2}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/internal/am;->e:I

    invoke-static {v2}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget v1, p1, Lcom/google/android/gms/internal/am;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/internal/am;->f:I

    invoke-static {v2}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/internal/am;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/internal/am;->h:I

    packed-switch v1, :pswitch_data_ec

    move-object v1, v0

    :goto_71
    if-eqz v1, :cond_78

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget v1, p1, Lcom/google/android/gms/internal/am;->i:I

    packed-switch v1, :pswitch_data_f8

    :goto_7d
    if-eqz v0, :cond_84

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    iget-object v0, p1, Lcom/google/android/gms/internal/am;->j:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/am;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    iget v0, p1, Lcom/google/android/gms/internal/am;->k:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/am;->k:I

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    iget-object v0, p1, Lcom/google/android/gms/internal/am;->l:Ljava/lang/String;

    if-eqz v0, :cond_ad

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/am;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget v0, p1, Lcom/google/android/gms/internal/am;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/am;->m:I

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/am;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/am;->o:Ljava/lang/String;

    if-eqz v0, :cond_d6

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/internal/am;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d6
    return-void

    :pswitch_d7
    const-string v1, "none"

    goto :goto_71

    :pswitch_da
    const-string v1, "dashed"

    goto :goto_71

    :pswitch_dd
    const-string v1, "dotted"

    goto :goto_71

    :pswitch_e0
    const-string v1, "solid"

    goto :goto_71

    :pswitch_e3
    const-string v0, "dark"

    goto :goto_7d

    :pswitch_e6
    const-string v0, "light"

    goto :goto_7d

    :pswitch_e9
    const-string v0, "medium"

    goto :goto_7d

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_da
        :pswitch_dd
        :pswitch_e0
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_e9
        :pswitch_e3
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/dh;)V
    .registers 4

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dh;->b:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dh;->c:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dh;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/dh;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dh;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dh;->f:Z

    if-eqz v0, :cond_45

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dh;->g:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dh;->h:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/de;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dh;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dh;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/dh;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/dh;->l:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8c

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/dh;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/z;)V
    .registers 8

    const/4 v5, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/dp;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-wide v0, p1, Lcom/google/android/gms/internal/z;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/de;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/google/android/gms/internal/z;->b:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v0, p1, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget v0, p1, Lcom/google/android/gms/internal/z;->d:I

    if-eq v0, v5, :cond_40

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/internal/z;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v0, p1, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    if-eqz v0, :cond_4b

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iget v0, p1, Lcom/google/android/gms/internal/z;->g:I

    if-eq v0, v5, :cond_5a

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/z;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/z;->f:Z

    if-eqz v0, :cond_65

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget v0, p1, Lcom/google/android/gms/internal/z;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_90

    iget-boolean v0, p1, Lcom/google/android/gms/internal/z;->h:Z

    if-eqz v0, :cond_78

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget-object v0, p1, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    iget-object v0, p1, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/de;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/am;)V

    :cond_90
    iget v0, p1, Lcom/google/android/gms/internal/z;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a0

    iget-object v0, p1, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    if-eqz v0, :cond_a0

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    return-void
.end method
