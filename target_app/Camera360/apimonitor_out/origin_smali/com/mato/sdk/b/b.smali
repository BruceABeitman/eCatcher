.class public final Lcom/mato/sdk/b/b;
.super Lcom/mato/sdk/b/c;


# static fields
.field private static final a:Ljava/lang/String; = "Mato.MatoInfoAsyncTask"


# instance fields
.field private b:Lcom/mato/sdk/b/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mato/sdk/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mato/sdk/a/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/mato/sdk/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/mato/sdk/b/b;->b:Lcom/mato/sdk/b/d;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "Mato.MatoInfoAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the httpreponse for config is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$b;->d()V

    const/4 v0, 0x0

    if-nez p1, :cond_41

    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u6210\u529f\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    sget-object v2, Lcom/mato/sdk/a/b$c;->b:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v2}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/mato/sdk/a/b$b;->b(I)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mato/sdk/a/b$b;->b(J)V

    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/mato/sdk/b/b;->b:Lcom/mato/sdk/b/d;

    if-eqz v2, :cond_40

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/mato/sdk/b/b;->b:Lcom/mato/sdk/b/d;

    invoke-interface {v1, v0}, Lcom/mato/sdk/b/d;->a(Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-static {}, Lcom/mato/sdk/a/b$b;->f()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_44} :catch_12e

    :try_start_44
    const-string/jumbo v2, "Mato.MatoInfoAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the encrypted data is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "80dee591a993ea01e51a766134f7827d"

    invoke-static {v2, p1}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mato.MatoInfoAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the decrypted data is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "success"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "success"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a9

    sget-object v4, Lcom/mato/sdk/a/b$c;->c:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v4}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/mato/sdk/a/b$b;->b(I)V

    const-string/jumbo v4, "errorMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    const-string/jumbo v4, "errorMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_35

    :cond_a9
    sget-object v4, Lcom/mato/sdk/a/b$c;->a:Lcom/mato/sdk/a/b$c;

    invoke-virtual {v4}, Lcom/mato/sdk/a/b$c;->ordinal()I

    move-result v4

    invoke-static {v4}, Lcom/mato/sdk/a/b$b;->b(I)V

    const-string/jumbo v4, "configuration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_114

    const-string/jumbo v4, "configuration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_c1} :catch_134
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_c1} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_c1} :catch_12e

    move-result v4

    if-nez v4, :cond_114

    :try_start_c4
    const-string/jumbo v4, "Mato.MatoInfoAsyncTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "the configuration is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "configuration"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "configuration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/mato/sdk/utils/d;->a()Lcom/mato/sdk/utils/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mato/sdk/utils/d;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mato/sdk/a/b;->b(Ljava/lang/String;)V

    const-string/jumbo v4, "Mato.MatoInfoAsyncTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "the config  after set is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_c4 .. :try_end_114} :catch_137
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_114} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_114} :catch_12e

    :cond_114
    :goto_114
    :try_start_114
    const-string/jumbo v4, "errorMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    const-string/jumbo v4, "errorMsg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_123
    .catch Lorg/json/JSONException; {:try_start_114 .. :try_end_123} :catch_134
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_123} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_123} :catch_12e

    move-result-object v0

    move v1, v2

    goto/16 :goto_35

    :cond_127
    :try_start_127
    iget-object v1, p0, Lcom/mato/sdk/b/b;->b:Lcom/mato/sdk/b/d;

    invoke-interface {v1, v0}, Lcom/mato/sdk/b/d;->b(Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_12c} :catch_12e

    goto/16 :goto_40

    :catch_12e
    move-exception v0

    goto/16 :goto_40

    :catch_131
    move-exception v2

    goto/16 :goto_35

    :catch_134
    move-exception v2

    goto/16 :goto_35

    :catch_137
    move-exception v4

    goto :goto_114

    :cond_139
    move v1, v2

    goto/16 :goto_35
.end method

.method final b()Lorg/apache/http/HttpEntity;
    .registers 13

    invoke-static {}, Lcom/mato/sdk/a/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mato/sdk/utils/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mato/sdk/utils/g;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "2989d4f8dcda393d1c1ca3c021f0cb10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/mato/sdk/utils/j;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mato/sdk/utils/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mato/sdk/utils/h;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/mato/sdk/utils/g;->f()I

    move-result v8

    invoke-static {}, Lcom/mato/sdk/utils/g;->e()I

    move-result v9

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_49
    const-string/jumbo v11, "packageName"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "fingerPrint"

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v10, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "authKey"

    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sdkVersion"

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "platform"

    invoke-static {}, Lcom/mato/sdk/utils/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imei"

    invoke-static {}, Lcom/mato/sdk/utils/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "appVersion"

    invoke-static {}, Lcom/mato/sdk/utils/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "networkType"

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "carrier"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imsi"

    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mato/sdk/a/b$b;->g()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-static {}, Lcom/mato/sdk/a/b$b;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_af
    if-lt v0, v3, :cond_f5

    const-string/jumbo v0, "authFailTime"

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "cpu"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "memory"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "systemInfo"

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "Mato.MatoInfoAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the request for config is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    return-object v0

    :cond_f5
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_fa} :catch_108

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_105

    :try_start_fe
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_105} :catch_10b

    :cond_105
    :goto_105
    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    :catch_108
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f4

    :catch_10b
    move-exception v4

    goto :goto_105
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
