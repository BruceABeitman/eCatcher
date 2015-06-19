.class public final Lcom/mato/sdk/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String; = "httpReadTimeout"

.field private static final B:Ljava/lang/String; = "originalResolution"

.field private static final C:Ljava/lang/String; = "boundarySize"

.field private static final D:Ljava/lang/String; = "crashLogReportUrl"

.field private static final E:Ljava/lang/String; = "deleteExif"

.field private static F:Lcom/mato/sdk/utils/d; = null

.field private static final a:Ljava/lang/String; = "Mato.ConfigParser"

.field private static final b:Ljava/lang/String; = "logPolicy"

.field private static final c:Ljava/lang/String; = "num"

.field private static final d:Ljava/lang/String; = "totalNum"

.field private static final e:Ljava/lang/String; = "reportUrl"

.field private static final f:Ljava/lang/String; = "authPolicy"

.field private static final g:Ljava/lang/String; = "expiredTime"

.field private static final h:Ljava/lang/String; = "analysisPolicy"

.field private static final i:Ljava/lang/String; = "optimizationPolicy"

.field private static final j:Ljava/lang/String; = "protocol"

.field private static final k:Ljava/lang/String; = "filteredHostNames"

.field private static final l:Ljava/lang/String; = "serviceType"

.field private static final m:Ljava/lang/String; = "cachePeerHost"

.field private static final n:Ljava/lang/String; = "cachePeerPort"

.field private static final o:Ljava/lang/String; = "forceWsgDecode"

.field private static final p:Ljava/lang/String; = "forceGzip"

.field private static final q:Ljava/lang/String; = "compressionPolicy"

.field private static final r:Ljava/lang/String; = "compressionType"

.field private static final s:Ljava/lang/String; = "cacheDir"

.field private static final t:Ljava/lang/String; = "showToast"

.field private static final u:Ljava/lang/String; = "useHostSuffix"

.field private static final v:Ljava/lang/String; = "alwaysBackSource"

.field private static final w:Ljava/lang/String; = "filteredUrlRegex"

.field private static final x:Ljava/lang/String; = "useSdkInDebugMode"

.field private static final y:Ljava/lang/String; = "useSdkInReleaseMode"

.field private static final z:Ljava/lang/String; = "allowedUrlRegex"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mato/sdk/utils/d;
    .registers 1

    sget-object v0, Lcom/mato/sdk/utils/d;->F:Lcom/mato/sdk/utils/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mato/sdk/utils/d;

    invoke-direct {v0}, Lcom/mato/sdk/utils/d;-><init>()V

    sput-object v0, Lcom/mato/sdk/utils/d;->F:Lcom/mato/sdk/utils/d;

    :cond_b
    sget-object v0, Lcom/mato/sdk/utils/d;->F:Lcom/mato/sdk/utils/d;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    const-string/jumbo v1, "compressionPolicy"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "compressionPolicy"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->d(I)V

    :cond_17
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "protocol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->a(I)V

    :cond_2a
    const-string/jumbo v1, "compressionType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "compressionType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->b(I)V

    :cond_3d
    const-string/jumbo v1, "cachePeerHost"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "cachePeerHost"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string/jumbo v1, "cachePeerHost"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string/jumbo v1, "Mato.ConfigParser"

    const-string/jumbo v2, "cache peer host is not null"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cachePeerPort"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "cachePeerPort"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "cachePeerHost"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "cachePeerPort"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->c(I)V

    :cond_8b
    const-string/jumbo v1, "forceGzip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    const-string/jumbo v1, "forceGzip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->c(Z)V

    :cond_9e
    const-string/jumbo v1, "forceWsgDecode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string/jumbo v1, "forceWsgDecode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->b(Z)V

    const-string/jumbo v1, "Mato.ConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FORCE_WSG_DECODE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "forceWsgDecode"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    const-string/jumbo v1, "useHostSuffix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const-string/jumbo v1, "useHostSuffix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->d(Z)V

    :cond_e1
    const-string/jumbo v1, "alwaysBackSource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string/jumbo v1, "alwaysBackSource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->a(Z)V

    :cond_f4
    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/mato/sdk/a/b;->a(Ljava/lang/String;)Lcom/mato/sdk/a/b$g;

    move-result-object v0

    const-string/jumbo v1, "alwaysBackSource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "alwaysBackSource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/a/b$g;->a(Z)V

    :cond_17
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "showToast"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "showToast"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->c(Z)V

    :cond_14
    const-string/jumbo v0, "logPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "logPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "logPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "reportUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string/jumbo v1, "reportUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/a/b$f;->a(Ljava/lang/String;)V

    :cond_40
    const-string/jumbo v0, "useSdkInDebugMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo v0, "useSdkInDebugMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->d(Z)V

    :cond_53
    const-string/jumbo v0, "useSdkInReleaseMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string/jumbo v0, "useSdkInReleaseMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->e(Z)V

    :cond_66
    const-string/jumbo v0, "allowedUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo v0, "allowedUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    :try_start_85
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "allowedUrlRegex"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/mato/sdk/a/b;->f(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_99} :catch_170

    :cond_99
    :goto_99
    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    :try_start_b8
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "filteredUrlRegex"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/mato/sdk/a/b;->e(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_cc} :catch_176

    :cond_cc
    :goto_cc
    const-string/jumbo v0, "analysisPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    const-string/jumbo v0, "analysisPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string/jumbo v0, "analysisPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/a/b$a;->a(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15c

    const-string/jumbo v0, "optimizationPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    const-string/jumbo v0, "optimizationPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string/jumbo v0, "optimizationPolicy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "_2g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a

    const-string/jumbo v1, "_2g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "_2g"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_11a
    const-string/jumbo v1, "_3g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    const-string/jumbo v1, "_3g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "_3g"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_130
    const-string/jumbo v1, "_4g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    const-string/jumbo v1, "_4g"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "_4g"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_146
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_15c
    const-string/jumbo v0, "crashLogReportUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    const-string/jumbo v0, "crashLogReportUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->h(Ljava/lang/String;)V

    :cond_16f
    return-void

    :catch_170
    move-exception v0

    invoke-static {v3}, Lcom/mato/sdk/a/b;->f(Ljava/lang/String;)V

    goto/16 :goto_99

    :catch_176
    move-exception v0

    invoke-static {v3}, Lcom/mato/sdk/a/b;->e(Ljava/lang/String;)V

    goto/16 :goto_cc
.end method

.method public final b()V
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "Mato.ConfigParser"

    const-string/jumbo v2, "config parser work"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string/jumbo v0, "Mato.ConfigParser"

    const-string/jumbo v1, "the configuration is empty"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v2, "Mato.ConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "config parser result"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Mato.ConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the config is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_50} :catch_352

    const-string/jumbo v1, "logPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string/jumbo v1, "logPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string/jumbo v1, "logPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "num"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string/jumbo v3, "num"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/mato/sdk/a/b$f;->a(I)V

    :cond_7c
    const-string/jumbo v3, "reportUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const-string/jumbo v3, "reportUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mato/sdk/a/b$f;->a(Ljava/lang/String;)V

    :cond_8f
    const-string/jumbo v3, "totalNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string/jumbo v3, "totalNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b$f;->b(I)V

    :cond_a2
    const-string/jumbo v1, "authPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string/jumbo v1, "authPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_be

    const-string/jumbo v1, "authPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b$b;->a(I)V

    :cond_be
    const-string/jumbo v1, "expiredTime"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_de

    const-string/jumbo v1, "expiredTime"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_de

    const-string/jumbo v1, "expiredTime"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/mato/sdk/a/b$b;->a(J)V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/mato/sdk/a/b$b;->a(I)V

    :cond_de
    const-string/jumbo v1, "analysisPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string/jumbo v1, "analysisPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string/jumbo v1, "analysisPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b$a;->a(I)V

    :cond_fa
    const-string/jumbo v1, "optimizationPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    const-string/jumbo v1, "optimizationPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16b

    const-string/jumbo v1, "optimizationPolicy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "_2g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    const-string/jumbo v3, "_2g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "_2g"

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_129
    const-string/jumbo v3, "_3g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13f

    const-string/jumbo v3, "_3g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "_3g"

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13f
    const-string/jumbo v3, "_4g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_155

    const-string/jumbo v3, "_4g"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "_4g"

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_155
    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16b

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "wifi"

    invoke-static {v1, v3}, Lcom/mato/sdk/utils/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_16b
    const-string/jumbo v1, "showToast"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17e

    const-string/jumbo v1, "showToast"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->c(Z)V

    :cond_17e
    const-string/jumbo v1, "useSdkInDebugMode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_191

    const-string/jumbo v1, "useSdkInDebugMode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->d(Z)V

    :cond_191
    const-string/jumbo v1, "useSdkInReleaseMode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    const-string/jumbo v1, "useSdkInReleaseMode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->e(Z)V

    :cond_1a4
    const-string/jumbo v1, "allowedUrlRegex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    const-string/jumbo v1, "allowedUrlRegex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d7

    const-string/jumbo v1, "filteredUrlRegex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d7

    :try_start_1c3
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "allowedUrlRegex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/mato/sdk/a/b;->f(Ljava/lang/String;)V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1d7} :catch_33d

    :cond_1d7
    :goto_1d7
    const-string/jumbo v1, "httpReadTimeout"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_200

    const-string/jumbo v1, "httpReadTimeout"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_200

    const-string/jumbo v1, "httpReadTimeout"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_200

    const-string/jumbo v1, "httpReadTimeout"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->d(I)V

    :cond_200
    const-string/jumbo v1, "originalResolution"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_229

    const-string/jumbo v1, "originalResolution"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_229

    const-string/jumbo v1, "originalResolution"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_229

    const-string/jumbo v1, "originalResolution"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->g(Ljava/lang/String;)V

    :cond_229
    const-string/jumbo v1, "boundarySize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_252

    const-string/jumbo v1, "boundarySize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_252

    const-string/jumbo v1, "boundarySize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_252

    const-string/jumbo v1, "boundarySize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->e(I)V

    :cond_252
    const-string/jumbo v1, "serviceType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_282

    const-string/jumbo v1, "serviceType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b;->a(I)V

    const-string/jumbo v1, "Mato.ConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "service Type"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "serviceType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_282
    const-string/jumbo v1, "filteredHostNames"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b0

    const-string/jumbo v1, "filteredHostNames"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b0

    const-string/jumbo v1, "filteredHostNames"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2b0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    :goto_2a7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_343

    invoke-static {v3}, Lcom/mato/sdk/a/b$d;->a([Ljava/lang/String;)V

    :cond_2b0
    const-string/jumbo v0, "cacheDir"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    const-string/jumbo v0, "cacheDir"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e2

    const-string/jumbo v0, "cacheDir"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e2

    const-string/jumbo v0, "Mato.ConfigParser"

    const-string/jumbo v1, "cachedir not null"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cacheDir"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->d(Ljava/lang/String;)V

    :cond_2e2
    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_315

    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_315

    const-string/jumbo v0, "filteredUrlRegex"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_315

    :try_start_301
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "filteredUrlRegex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/mato/sdk/a/b;->e(Ljava/lang/String;)V
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_301 .. :try_end_315} :catch_34d

    :cond_315
    :goto_315
    const-string/jumbo v0, "crashLogReportUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_328

    const-string/jumbo v0, "crashLogReportUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->h(Ljava/lang/String;)V

    :cond_328
    const-string/jumbo v0, "deleteExif"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "deleteExif"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->f(Z)V

    goto/16 :goto_1a

    :catch_33d
    move-exception v1

    invoke-static {v5}, Lcom/mato/sdk/a/b;->f(Ljava/lang/String;)V

    goto/16 :goto_1d7

    :cond_343
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a7

    :catch_34d
    move-exception v0

    invoke-static {v5}, Lcom/mato/sdk/a/b;->e(Ljava/lang/String;)V

    goto :goto_315

    :catch_352
    move-exception v0

    goto/16 :goto_1a
.end method
