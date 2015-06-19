.class public final Lcom/umeng/analytics/i;
.super Ljava/lang/Object;
.source "UmengStoreHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "cache_version"

.field private static final b:Ljava/lang/String; = "error"

.field private static final c:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final d:Ljava/lang/String; = "mobclick_agent_online_setting_"

.field private static final e:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final f:Ljava/lang/String; = "mobclick_agent_update_"

.field private static final g:Ljava/lang/String; = "mobclick_agent_state_"

.field private static final h:Ljava/lang/String; = "mobclick_agent_cached_"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/umeng/analytics/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const-string/jumbo v1, ""

    const/16 v2, 0x400

    new-array v4, v2, [B

    move-object v2, v1

    :goto_11
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_22

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_38} :catch_69
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_38} :catch_6b

    move-result-object v1

    move-object v2, v1

    goto :goto_11

    :cond_3b
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "cache_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_53
    const-string/jumbo v2, "cache_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_5c} :catch_61
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_5c} :catch_69
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5c} :catch_6b

    move-result v2

    if-eqz v2, :cond_21

    move-object v0, v1

    goto :goto_21

    :catch_61
    move-exception v1

    :try_start_62
    invoke-static {p0}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_6b

    goto :goto_21

    :catch_69
    move-exception v1

    goto :goto_21

    :catch_6b
    move-exception v1

    goto :goto_21
.end method

.method static a(Landroid/content/Context;Lcom/umeng/analytics/a/g;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0}, Lcom/umeng/analytics/a/g;->b(Lorg/json/JSONObject;)V

    invoke-static {p0, v0, p2}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_2

    :catch_f
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "cache message error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/umeng/analytics/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cache_version"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "cache buffer success"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_online_setting_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_2

    :catch_e
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "cache message error"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_header_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_update_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_header_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mobclick_agent_cached_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    const/4 v5, -0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_a
    const-string/jumbo v2, "gender"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_22

    const-string/jumbo v2, "sex"

    const-string/jumbo v3, "gender"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_22
    const-string/jumbo v2, "age"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_3a

    const-string/jumbo v2, "age"

    const-string/jumbo v3, "age"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3a
    const-string/jumbo v2, ""

    const-string/jumbo v3, "user_id"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "user_id"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5d
    const-string/jumbo v2, ""

    const-string/jumbo v3, "id_source"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "id_source"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_84
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_87} :catch_8b

    move-result v1

    if-lez v1, :cond_8f

    :goto_8a
    return-object v0

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    const/4 v0, 0x0

    goto :goto_8a
.end method

.method public static i(Landroid/content/Context;)[I
    .registers 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string/jumbo v2, "umeng_net_report_policy"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2a

    const-string/jumbo v2, "umeng_net_report_policy"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    const-string/jumbo v2, "umeng_net_report_interval"

    sget v3, Lcom/umeng/analytics/f;->h:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v5

    :goto_29
    return-object v1

    :cond_2a
    const-string/jumbo v2, "umeng_local_report_policy"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    const-string/jumbo v2, "umeng_local_report_interval"

    sget v3, Lcom/umeng/analytics/f;->h:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v5

    goto :goto_29
.end method

.method static j(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/umeng/analytics/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/umeng/analytics/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
