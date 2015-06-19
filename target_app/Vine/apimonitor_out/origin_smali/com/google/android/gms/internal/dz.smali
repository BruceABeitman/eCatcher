.class public final Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;


# static fields
.field private static final qx:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dz;->qx:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Ljava/lang/String;)Lcom/google/android/gms/internal/dv;
    .registers 26

    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ad_url"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ad_size"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "ad_html"

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v17, -0x1

    const-string v2, "debug_dialog"

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "interstitial_timeout"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "interstitial_timeout"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-long v7, v6

    :goto_41
    const-string v2, "orientation"

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, -0x1

    const-string v6, "portrait"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-static {}, Lcom/google/android/gms/internal/ep;->bN()I

    move-result v15

    :cond_55
    :goto_55
    const/4 v2, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17c

    const-string v2, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v2}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/dv;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    :goto_6d
    return-object v2

    :cond_6e
    const-wide/16 v7, -0x1

    goto :goto_41

    :cond_71
    const-string v6, "landscape"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {}, Lcom/google/android/gms/internal/ep;->bM()I

    move-result v15

    goto :goto_55

    :cond_7e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_be

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iget-object v2, v2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v3, v4}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/dv;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/dv;->oy:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;

    iget-wide v0, v2, Lcom/google/android/gms/internal/dv;->qh:J

    move-wide/from16 v17, v0

    move-object v10, v2

    :goto_9b
    const-string v2, "click_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v10, :cond_ec

    const/4 v2, 0x0

    :goto_a4
    if-eqz v6, :cond_179

    if-nez v2, :cond_ad

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_ad
    const/4 v5, 0x0

    :goto_ae
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_ef

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    :cond_be
    const-string v2, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static {v2}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/dv;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c9} :catch_ca

    goto :goto_6d

    :catch_ca
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

    invoke-static {v2}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/dv;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    goto :goto_6d

    :cond_ec
    :try_start_ec
    iget-object v2, v10, Lcom/google/android/gms/internal/dv;->nr:Ljava/util/List;

    goto :goto_a4

    :cond_ef
    move-object v5, v2

    :goto_f0
    const-string v2, "impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v10, :cond_113

    const/4 v2, 0x0

    :goto_f9
    if-eqz v9, :cond_177

    if-nez v2, :cond_102

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_102
    const/4 v6, 0x0

    :goto_103
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_116

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_103

    :cond_113
    iget-object v2, v10, Lcom/google/android/gms/internal/dv;->ns:Ljava/util/List;

    goto :goto_f9

    :cond_116
    move-object v6, v2

    :goto_117
    const-string v2, "manual_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v10, :cond_13a

    const/4 v2, 0x0

    :goto_120
    if-eqz v12, :cond_175

    if-nez v2, :cond_129

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_129
    const/4 v9, 0x0

    :goto_12a
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v9, v13, :cond_13d

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_12a

    :cond_13a
    iget-object v2, v10, Lcom/google/android/gms/internal/dv;->qf:Ljava/util/List;

    goto :goto_120

    :cond_13d
    move-object v12, v2

    :goto_13e
    if-eqz v10, :cond_151

    iget v2, v10, Lcom/google/android/gms/internal/dv;->orientation:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_147

    iget v15, v10, Lcom/google/android/gms/internal/dv;->orientation:I

    :cond_147
    iget-wide v13, v10, Lcom/google/android/gms/internal/dv;->qc:J

    const-wide/16 v20, 0x0

    cmp-long v2, v13, v20

    if-lez v2, :cond_151

    iget-wide v7, v10, Lcom/google/android/gms/internal/dv;->qc:J

    :cond_151
    const-string v2, "active_view"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v21, 0x0

    const-string v2, "ad_is_javascript"

    const/4 v9, 0x0

    invoke-virtual {v11, v2, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_169

    const-string v2, "ad_passback_url"

    const/4 v9, 0x0

    invoke-virtual {v11, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_169
    new-instance v2, Lcom/google/android/gms/internal/dv;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v13, -0x1

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_173
    .catch Lorg/json/JSONException; {:try_start_ec .. :try_end_173} :catch_ca

    goto/16 :goto_6d

    :cond_175
    move-object v12, v2

    goto :goto_13e

    :cond_177
    move-object v6, v2

    goto :goto_117

    :cond_179
    move-object v5, v2

    goto/16 :goto_f0

    :cond_17c
    move-object v10, v2

    goto/16 :goto_9b
.end method

.method public static a(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/ed;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x2

    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_17

    const-string v0, "eid"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pU:Landroid/os/Bundle;

    if-eqz v0, :cond_22

    const-string v0, "ad_pos"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->pU:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/dz;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/aj;)V

    const-string v0, "format"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iget-object v1, v1, Lcom/google/android/gms/internal/am;->mc:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iget v0, v0, Lcom/google/android/gms/internal/am;->width:I

    if-ne v0, v10, :cond_3d

    const-string v0, "smart_w"

    const-string v1, "full"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iget v0, v0, Lcom/google/android/gms/internal/am;->height:I

    if-ne v0, v9, :cond_4a

    const-string v0, "smart_h"

    const-string v1, "auto"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iget-object v0, v0, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_9b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iget-object v4, v0, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_5c
    if-ge v1, v5, :cond_96

    aget-object v6, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    iget v0, v6, Lcom/google/android/gms/internal/am;->width:I

    if-ne v0, v10, :cond_90

    iget v0, v6, Lcom/google/android/gms/internal/am;->widthPixels:I

    int-to-float v0, v0

    iget v7, p1, Lcom/google/android/gms/internal/ed;->ro:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/google/android/gms/internal/am;->height:I

    if-ne v0, v9, :cond_93

    iget v0, v6, Lcom/google/android/gms/internal/am;->heightPixels:I

    int-to-float v0, v0

    iget v6, p1, Lcom/google/android/gms/internal/ed;->ro:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    :goto_89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5c

    :cond_90
    iget v0, v6, Lcom/google/android/gms/internal/am;->width:I

    goto :goto_76

    :cond_93
    iget v0, v6, Lcom/google/android/gms/internal/am;->height:I

    goto :goto_89

    :cond_96
    const-string v0, "sz"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->kL:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pW:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_bc

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->pW:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    const-string v0, "ms"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->pX:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->pY:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->pZ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/dz;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ed;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iget v0, v0, Lcom/google/android/gms/internal/aj;->versionCode:I

    if-lt v0, v8, :cond_f0

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/dz;->a(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_f0
    iget v0, p0, Lcom/google/android/gms/internal/dt;->versionCode:I

    if-lt v0, v8, :cond_fb

    const-string v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->qa:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fb
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->o(Ljava/util/Map;)Lorg/json/JSONObject;

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

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    :cond_121
    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_128
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_128} :catch_12a

    move-result-object v0

    :goto_129
    return-object v0

    :catch_12a
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

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_129
.end method

.method private static a(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

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

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/aj;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/aj;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/em;->bK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-wide v0, p1, Lcom/google/android/gms/internal/aj;->lQ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/dz;->qx:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/google/android/gms/internal/aj;->lQ:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget v0, p1, Lcom/google/android/gms/internal/aj;->lR:I

    if-eq v0, v5, :cond_40

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/internal/aj;->lR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    if-eqz v0, :cond_4b

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iget v0, p1, Lcom/google/android/gms/internal/aj;->lU:I

    if-eq v0, v5, :cond_5a

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/aj;->lU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/aj;->lT:Z

    if-eqz v0, :cond_65

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget v0, p1, Lcom/google/android/gms/internal/aj;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_90

    iget-boolean v0, p1, Lcom/google/android/gms/internal/aj;->lV:Z

    if-eqz v0, :cond_78

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->lW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/aj;->lW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->lX:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->lX:Lcom/google/android/gms/internal/ax;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/dz;->a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ax;)V

    :cond_90
    iget v0, p1, Lcom/google/android/gms/internal/aj;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a0

    iget-object v0, p1, Lcom/google/android/gms/internal/aj;->lZ:Ljava/lang/String;

    if-eqz v0, :cond_a0

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/internal/aj;->lZ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ax;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ax;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mB:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->mB:I

    invoke-static {v2}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v1, p1, Lcom/google/android/gms/internal/ax;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v1, p1, Lcom/google/android/gms/internal/ax;->mC:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mD:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->mC:I

    invoke-static {v2}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->mD:I

    invoke-static {v2}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget v1, p1, Lcom/google/android/gms/internal/ax;->mE:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->mE:I

    invoke-static {v2}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/internal/ax;->mF:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mG:I

    packed-switch v1, :pswitch_data_ec

    move-object v1, v0

    :goto_71
    if-eqz v1, :cond_78

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    iget v1, p1, Lcom/google/android/gms/internal/ax;->mH:I

    packed-switch v1, :pswitch_data_f8

    :goto_7d
    if-eqz v0, :cond_84

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    iget-object v0, p1, Lcom/google/android/gms/internal/ax;->mI:Ljava/lang/String;

    if-eqz v0, :cond_8f

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/ax;->mI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    iget v0, p1, Lcom/google/android/gms/internal/ax;->mJ:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mJ:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    iget-object v0, p1, Lcom/google/android/gms/internal/ax;->mK:Ljava/lang/String;

    if-eqz v0, :cond_ad

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/ax;->mK:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    iget v0, p1, Lcom/google/android/gms/internal/ax;->mL:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mL:I

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/ax;->mM:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ax;->mN:Ljava/lang/String;

    if-eqz v0, :cond_d6

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/internal/ax;->mN:Ljava/lang/String;

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

.method private static a(Ljava/util/HashMap;Lcom/google/android/gms/internal/ed;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ed;",
            ")V"
        }
    .end annotation

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->qY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ed;->qZ:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->m(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ed;->ra:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->m(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ed;->rb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/ed;->rb:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/ed;->rc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ed;->rd:Z

    if-eqz v0, :cond_45

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ed;->re:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->m(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ed;->rf:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->m(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/ed;->rg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ed;->rh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/ed;->rh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->ri:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/ed;->rj:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8c

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->ro:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/ed;->rp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "active_network_state"

    iget v2, p1, Lcom/google/android/gms/internal/ed;->ru:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "active_network_metered"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ed;->rt:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "connectivity"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_charging"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ed;->rs:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "battery_level"

    iget-wide v2, p1, Lcom/google/android/gms/internal/ed;->rr:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "battery"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static m(Z)Ljava/lang/Integer;
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

.method private static o(I)Ljava/lang/String;
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
