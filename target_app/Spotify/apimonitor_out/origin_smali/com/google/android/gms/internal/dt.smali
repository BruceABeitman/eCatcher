.class public final Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dt;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;
    .registers 24

    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ad_url"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ad_size"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "ad_html"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v12, -0x1

    const-string v2, "debug_dialog"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "interstitial_timeout"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string v2, "interstitial_timeout"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-long v7, v6

    :goto_51
    const-string v2, "orientation"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, -0x1

    const-string v6, "portrait"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-static {}, Lcom/google/android/gms/internal/ej;->c()I

    move-result v10

    :cond_67
    :goto_67
    const/4 v2, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_90

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19f

    const-string v2, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    :goto_7f
    return-object v2

    :cond_80
    const-wide/16 v7, -0x1

    goto :goto_51

    :cond_83
    const-string v6, "landscape"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-static {}, Lcom/google/android/gms/internal/ej;->b()I

    move-result v10

    goto :goto_67

    :cond_90
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/cx;->k:Lcom/google/android/gms/internal/dx;

    iget-object v2, v2, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/internal/ds;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cz;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/cz;->c:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/internal/cz;->n:J

    move-object v15, v2

    :goto_a9
    const-string v2, "click_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v15, :cond_f8

    const/4 v2, 0x0

    :goto_b4
    if-eqz v6, :cond_19c

    if-nez v2, :cond_bd

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_bd
    const/4 v5, 0x0

    :goto_be
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_fb

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    :cond_ce
    const-string v2, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cz;-><init>(I)V
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d9} :catch_da

    goto :goto_7f

    :catch_da
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse the mediation config: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/cz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cz;-><init>(I)V

    goto :goto_7f

    :cond_f8
    :try_start_f8
    iget-object v2, v15, Lcom/google/android/gms/internal/cz;->d:Ljava/util/List;

    goto :goto_b4

    :cond_fb
    move-object v5, v2

    :goto_fc
    const-string v2, "impression_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v15, :cond_125

    const/4 v2, 0x0

    :goto_107
    if-eqz v9, :cond_19a

    if-nez v2, :cond_110

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_110
    const/4 v6, 0x0

    :goto_111
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_128

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_111

    :cond_125
    iget-object v2, v15, Lcom/google/android/gms/internal/cz;->f:Ljava/util/List;

    goto :goto_107

    :cond_128
    move-object v6, v2

    :goto_129
    const-string v2, "manual_impression_urls"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    if-nez v15, :cond_154

    const/4 v2, 0x0

    :goto_134
    if-eqz v16, :cond_198

    if-nez v2, :cond_13d

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_13d
    const/4 v9, 0x0

    :goto_13e
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_157

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_13e

    :cond_154
    iget-object v2, v15, Lcom/google/android/gms/internal/cz;->j:Ljava/util/List;

    goto :goto_134

    :cond_157
    move-object v9, v2

    :goto_158
    if-eqz v15, :cond_170

    iget v2, v15, Lcom/google/android/gms/internal/cz;->l:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_164

    iget v10, v15, Lcom/google/android/gms/internal/cz;->l:I

    :cond_164
    iget-wide v0, v15, Lcom/google/android/gms/internal/cz;->g:J

    move-wide/from16 v16, v0

    const-wide/16 v19, 0x0

    cmp-long v2, v16, v19

    if-lez v2, :cond_170

    iget-wide v7, v15, Lcom/google/android/gms/internal/cz;->g:J

    :cond_170
    const-string v2, "active_view"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    const-string v2, "ad_is_javascript"

    const/4 v15, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_191

    const-string v2, "ad_passback_url"

    const/16 v16, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_191
    new-instance v2, Lcom/google/android/gms/internal/cz;

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/util/List;ILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_196
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_196} :catch_da

    goto/16 :goto_7f

    :cond_198
    move-object v9, v2

    goto :goto_158

    :cond_19a
    move-object v6, v2

    goto :goto_129

    :cond_19c
    move-object v5, v2

    goto/16 :goto_fc

    :cond_19f
    move-object v15, v2

    goto/16 :goto_a9
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

.method public static a(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/dw;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_14

    const-string v0, "eid"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    const-string v0, "ad_pos"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->c:Lcom/google/android/gms/internal/ah;

    invoke-static {}, Lcom/google/android/gms/internal/eg;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v3, "abf"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-wide v3, v1, Lcom/google/android/gms/internal/ah;->b:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_46

    const-string v0, "cust_age"

    sget-object v3, Lcom/google/android/gms/internal/dt;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ah;->b:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    iget-object v0, v1, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_51

    const-string v0, "extras"

    iget-object v3, v1, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    iget v0, v1, Lcom/google/android/gms/internal/ah;->d:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_61

    const-string v0, "cust_gender"

    iget v3, v1, Lcom/google/android/gms/internal/ah;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    iget-object v0, v1, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;

    if-eqz v0, :cond_6c

    const-string v0, "kw"

    iget-object v3, v1, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    iget v0, v1, Lcom/google/android/gms/internal/ah;->g:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7c

    const-string v0, "tag_for_child_directed_treatment"

    iget v3, v1, Lcom/google/android/gms/internal/ah;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ah;->f:Z

    if-eqz v0, :cond_87

    const-string v0, "adtest"

    const-string v3, "on"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    iget v0, v1, Lcom/google/android/gms/internal/ah;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_185

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ah;->h:Z

    if-eqz v0, :cond_9a

    const-string v0, "d_imp_hdr"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    iget-object v0, v1, Lcom/google/android/gms/internal/ah;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "ppid"

    iget-object v3, v1, Lcom/google/android/gms/internal/ah;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a9
    iget-object v0, v1, Lcom/google/android/gms/internal/ah;->j:Lcom/google/android/gms/internal/av;

    if-eqz v0, :cond_185

    iget-object v3, v1, Lcom/google/android/gms/internal/ah;->j:Lcom/google/android/gms/internal/av;

    iget v0, v3, Lcom/google/android/gms/internal/av;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "acolor"

    iget v4, v3, Lcom/google/android/gms/internal/av;->b:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    iget v0, v3, Lcom/google/android/gms/internal/av;->c:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_d5

    const-string v0, "bgcolor"

    iget v4, v3, Lcom/google/android/gms/internal/av;->c:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d5
    iget v0, v3, Lcom/google/android/gms/internal/av;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_fb

    iget v0, v3, Lcom/google/android/gms/internal/av;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_fb

    const-string v0, "gradientto"

    iget v4, v3, Lcom/google/android/gms/internal/av;->d:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gradientfrom"

    iget v4, v3, Lcom/google/android/gms/internal/av;->e:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fb
    iget v0, v3, Lcom/google/android/gms/internal/av;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "bcolor"

    iget v4, v3, Lcom/google/android/gms/internal/av;->f:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10e
    const-string v0, "bthick"

    iget v4, v3, Lcom/google/android/gms/internal/av;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v3, Lcom/google/android/gms/internal/av;->h:I

    packed-switch v0, :pswitch_data_3f4

    const/4 v0, 0x0

    :goto_11f
    if-eqz v0, :cond_126

    const-string v4, "btype"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_126
    iget v0, v3, Lcom/google/android/gms/internal/av;->i:I

    packed-switch v0, :pswitch_data_400

    const/4 v0, 0x0

    :goto_12c
    if-eqz v0, :cond_133

    const-string v4, "callbuttoncolor"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_133
    iget-object v0, v3, Lcom/google/android/gms/internal/av;->j:Ljava/lang/String;

    if-eqz v0, :cond_13e

    const-string v0, "channel"

    iget-object v4, v3, Lcom/google/android/gms/internal/av;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13e
    iget v0, v3, Lcom/google/android/gms/internal/av;->k:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_151

    const-string v0, "dcolor"

    iget v4, v3, Lcom/google/android/gms/internal/av;->k:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_151
    iget-object v0, v3, Lcom/google/android/gms/internal/av;->l:Ljava/lang/String;

    if-eqz v0, :cond_15c

    const-string v0, "font"

    iget-object v4, v3, Lcom/google/android/gms/internal/av;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15c
    iget v0, v3, Lcom/google/android/gms/internal/av;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_16f

    const-string v0, "hcolor"

    iget v4, v3, Lcom/google/android/gms/internal/av;->m:I

    invoke-static {v4}, Lcom/google/android/gms/internal/dt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16f
    const-string v0, "headersize"

    iget v4, v3, Lcom/google/android/gms/internal/av;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/google/android/gms/internal/av;->o:Ljava/lang/String;

    if-eqz v0, :cond_185

    const-string v0, "q"

    iget-object v3, v3, Lcom/google/android/gms/internal/av;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_185
    iget v0, v1, Lcom/google/android/gms/internal/ah;->a:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_195

    iget-object v0, v1, Lcom/google/android/gms/internal/ah;->l:Ljava/lang/String;

    if-eqz v0, :cond_195

    const-string v0, "url"

    iget-object v1, v1, Lcom/google/android/gms/internal/ah;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_195
    const-string v0, "format"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget v0, v0, Lcom/google/android/gms/internal/ak;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1ac

    const-string v0, "smart_w"

    const-string v1, "full"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ac
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget v0, v0, Lcom/google/android/gms/internal/ak;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1ba

    const-string v0, "smart_h"

    const-string v1, "auto"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ba
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_229

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->d:Lcom/google/android/gms/internal/ak;

    iget-object v4, v0, Lcom/google/android/gms/internal/ak;->h:[Lcom/google/android/gms/internal/ak;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1cc
    if-ge v1, v5, :cond_224

    aget-object v6, v4, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1db

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1db
    iget v0, v6, Lcom/google/android/gms/internal/ak;->f:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_21e

    iget v0, v6, Lcom/google/android/gms/internal/ak;->g:I

    int-to-float v0, v0

    iget v7, p1, Lcom/google/android/gms/internal/dw;->q:F

    div-float/2addr v0, v7

    float-to-int v0, v0

    :goto_1e7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/google/android/gms/internal/ak;->c:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_221

    iget v0, v6, Lcom/google/android/gms/internal/ak;->d:I

    int-to-float v0, v0

    iget v6, p1, Lcom/google/android/gms/internal/dw;->q:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    :goto_1fb
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1cc

    :pswitch_202
    const-string v0, "none"

    goto/16 :goto_11f

    :pswitch_206
    const-string v0, "dashed"

    goto/16 :goto_11f

    :pswitch_20a
    const-string v0, "dotted"

    goto/16 :goto_11f

    :pswitch_20e
    const-string v0, "solid"

    goto/16 :goto_11f

    :pswitch_212
    const-string v0, "dark"

    goto/16 :goto_12c

    :pswitch_216
    const-string v0, "light"

    goto/16 :goto_12c

    :pswitch_21a
    const-string v0, "medium"

    goto/16 :goto_12c

    :cond_21e
    iget v0, v6, Lcom/google/android/gms/internal/ak;->f:I

    goto :goto_1e7

    :cond_221
    iget v0, v6, Lcom/google/android/gms/internal/ak;->c:I

    goto :goto_1fb

    :cond_224
    const-string v0, "sz"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_229
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_24a

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->g:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24a
    const-string v0, "ms"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->k:Lcom/google/android/gms/internal/dx;

    iget-object v1, v1, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dw;->b:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dt;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dw;->c:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dt;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dw;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_298

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/dw;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_298
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dw;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dw;->f:Z

    if-eqz v0, :cond_2ad

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ad
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dw;->g:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dt;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/dw;->h:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/dt;->a(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/dw;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/dw;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d9

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/dw;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d9
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/dw;->l:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2f4

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f4
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "u_sd"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v1, p1, Lcom/google/android/gms/internal/dw;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->c:Lcom/google/android/gms/internal/ah;

    iget v0, v0, Lcom/google/android/gms/internal/ah;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3a4

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->c:Lcom/google/android/gms/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->k:Landroid/location/Location;

    if-eqz v0, :cond_3a4

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->c:Lcom/google/android/gms/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ah;->k:Landroid/location/Location;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, 0x416312d000000000L

    mul-double/2addr v5, v7

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x416312d000000000L

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "radius"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lat"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "long"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uule"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a4
    iget v0, p0, Lcom/google/android/gms/internal/cx;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3b0

    const-string v0, "quality_signals"

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->l:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3d2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ad Request JSON: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V

    :cond_3d2
    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3d9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d9} :catch_3db

    move-result-object v0

    :goto_3da
    return-object v0

    :catch_3db
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem serializing ad request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3da

    :pswitch_data_3f4
    .packed-switch 0x0
        :pswitch_202
        :pswitch_206
        :pswitch_20a
        :pswitch_20e
    .end packed-switch

    :pswitch_data_400
    .packed-switch 0x0
        :pswitch_216
        :pswitch_21a
        :pswitch_212
    .end packed-switch
.end method
