.class public Lcom/tencent/utils/OpenConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/utils/OpenConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/utils/OpenConfig;->a:Ljava/util/HashMap;

    sput-object v0, Lcom/tencent/utils/OpenConfig;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/utils/OpenConfig;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/utils/OpenConfig;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/utils/OpenConfig;->h:Z

    iput-object p1, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->a()V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/utils/OpenConfig;I)I
    .registers 2

    iput p1, p0, Lcom/tencent/utils/OpenConfig;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/utils/OpenConfig;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, ""

    :try_start_3
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    iget-object v2, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_26} :catch_4e

    move-result-object v0

    :goto_27
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_60

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_78
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_36

    :catch_40
    move-exception v2

    :try_start_41
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_78

    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_72

    move-object v0, v1

    :goto_4b
    return-object v0

    :cond_4c
    move-object v0, p1

    goto :goto_21

    :catch_4e
    move-exception v0

    :try_start_4f
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_5a

    move-result-object v0

    goto :goto_27

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4b

    :cond_60
    :try_start_60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_78
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_40

    move-result-object v1

    :try_start_64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6a} :catch_6c

    move-object v0, v1

    goto :goto_4b

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4b

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4b

    :catchall_78
    move-exception v1

    :try_start_79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_80

    :goto_7f
    throw v1

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f
.end method

.method private a()V
    .registers 3

    const-string/jumbo v0, "com.tencent.open.config.json"

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    goto :goto_e
.end method

.method static synthetic a(Lcom/tencent/utils/OpenConfig;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/utils/OpenConfig;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1e
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    const-string/jumbo v0, "cgi back, do update"

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    const-string/jumbo v0, "com.tencent.open.config.json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/utils/OpenConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/utils/OpenConfig;->f:J

    return-void
.end method

.method private b()V
    .registers 4

    iget v0, p0, Lcom/tencent/utils/OpenConfig;->g:I

    if-eqz v0, :cond_b

    const-string/jumbo v0, "update thread is running, return"

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/utils/OpenConfig;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "appid"

    iget-object v2, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appid_for_getting_config"

    iget-object v2, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdkv"

    const-string/jumbo v2, "2.3"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdkp"

    const-string/jumbo v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/utils/OpenConfig$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/utils/OpenConfig$1;-><init>(Lcom/tencent/utils/OpenConfig;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/tencent/utils/OpenConfig$1;->start()V

    goto :goto_a
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/tencent/utils/OpenConfig;->h:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "OpenConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/utils/OpenConfig;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    const-string/jumbo v1, "Common_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :cond_c
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/utils/OpenConfig;->f:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1f

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->b()V

    :cond_1f
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
    .registers 4

    sget-object v0, Lcom/tencent/utils/OpenConfig;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/utils/OpenConfig;->a:Ljava/util/HashMap;

    :cond_b
    if-eqz p1, :cond_f

    sput-object p1, Lcom/tencent/utils/OpenConfig;->b:Ljava/lang/String;

    :cond_f
    if-nez p1, :cond_17

    sget-object v0, Lcom/tencent/utils/OpenConfig;->b:Ljava/lang/String;

    if-eqz v0, :cond_2c

    sget-object p1, Lcom/tencent/utils/OpenConfig;->b:Ljava/lang/String;

    :cond_17
    :goto_17
    sget-object v0, Lcom/tencent/utils/OpenConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/utils/OpenConfig;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/tencent/utils/OpenConfig;

    invoke-direct {v0, p0, p1}, Lcom/tencent/utils/OpenConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/utils/OpenConfig;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object v0

    :cond_2c
    const-string/jumbo p1, "0"

    goto :goto_17
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    :cond_23
    :goto_23
    return v1

    :cond_24
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_33
    move v1, v0

    goto :goto_23

    :cond_35
    move v0, v1

    goto :goto_33

    :cond_37
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_23
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/utils/OpenConfig;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/utils/OpenConfig;->c()V

    iget-object v0, p0, Lcom/tencent/utils/OpenConfig;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
