.class public Lcom/facebook/bn;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field static final synthetic a:Z

.field private static h:Lcom/facebook/g/b;


# instance fields
.field private final b:Ljava/net/HttpURLConnection;

.field private final c:Lcom/facebook/h/b;

.field private final d:Lcom/facebook/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/h/g",
            "<",
            "Lcom/facebook/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lcom/facebook/ac;

.field private final g:Lcom/facebook/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/bn;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    iput-object v0, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bn;->e:Z

    iput-object p3, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    return-void
.end method

.method constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    iput-object v0, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    iput-boolean p4, p0, Lcom/facebook/bn;->e:Z

    iput-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/g;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bc;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/h/g",
            "<",
            "Lcom/facebook/h/b;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    iput-object p3, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    iput-boolean p4, p0, Lcom/facebook/bn;->e:Z

    iput-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    return-void
.end method

.method private static a(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/bn;
    .registers 8

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_4f

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2, p4, p1}, Lcom/facebook/ac;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ac;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/facebook/ac;->b()I

    move-result v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Lcom/facebook/bc;->a()Lcom/facebook/bo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/facebook/bo;->f()V

    :cond_1d
    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    :goto_22
    return-object v0

    :cond_23
    const-string v0, "body"

    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p2, v0, v1}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3b

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/c;->a(Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object v1

    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V

    goto :goto_22

    :cond_3b
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_4d

    check-cast v0, Lorg/json/JSONArray;

    const-class v1, Lcom/facebook/h/b;

    invoke-static {v0, v1}, Lcom/facebook/h/c;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/h/g;

    move-result-object v1

    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/g;Z)V

    goto :goto_22

    :cond_4d
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4f
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v0, :cond_5a

    new-instance v0, Lcom/facebook/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V

    goto :goto_22

    :cond_5a
    new-instance v0, Lcom/facebook/z;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got unexpected object type in response, class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/g/t;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ak;->c:Lcom/facebook/ak;

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/bn;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/facebook/bn;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v2, "Response"

    const-string v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/facebook/bl;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v0, p1, Lcom/facebook/g/a;

    if-eqz v0, :cond_fc

    move-object v0, p1

    check-cast v0, Lcom/facebook/g/a;

    invoke-static {}, Lcom/facebook/bn;->d()Lcom/facebook/g/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/g/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p1}, Lcom/facebook/bl;->size()I

    move-result v4

    if-ne v4, v6, :cond_44

    invoke-virtual {p1, v5}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/bc;->c()Ljava/lang/String;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-virtual {v0}, Lcom/facebook/g/a;->j()Z

    move-result v0

    if-nez v0, :cond_f6

    if-eqz v3, :cond_f6

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f6

    :try_start_34
    invoke-virtual {v3, v1}, Lcom/facebook/g/b;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_85
    .catch Lcom/facebook/z; {:try_start_34 .. :try_end_37} :catch_6a
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_37} :catch_73
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_7c

    move-result-object v2

    if-eqz v2, :cond_4e

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_3c
    invoke-static {v2, v0, p1, v4}, Lcom/facebook/bn;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_85
    .catch Lcom/facebook/z; {:try_start_3c .. :try_end_3f} :catch_f2
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3f} :catch_73
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_7c

    move-result-object v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    :goto_43
    return-object v0

    :cond_44
    sget-object v4, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v5, "ResponseCache"

    const-string v6, "Not using cache for cacheable request because no key was specified"

    invoke-static {v4, v5, v6}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_4e
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_55
    :try_start_55
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_8a

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :cond_61
    :goto_61
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/facebook/bn;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_ed
    .catch Lcom/facebook/z; {:try_start_55 .. :try_end_65} :catch_99
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_65} :catch_b1
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_65} :catch_cf

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto :goto_43

    :catch_6a
    move-exception v0

    move-object v0, v2

    :goto_6c
    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_55

    :catch_73
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_55

    :catch_7c
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_55

    :catchall_85
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_8a
    :try_start_8a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v0, :cond_61

    if-eqz v2, :cond_61

    if-eqz v1, :cond_61

    invoke-virtual {v0, v2, v1}, Lcom/facebook/g/b;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_ed
    .catch Lcom/facebook/z; {:try_start_8a .. :try_end_97} :catch_99
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_97} :catch_b1
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_97} :catch_cf

    move-result-object v1

    goto :goto_61

    :catch_99
    move-exception v0

    :try_start_9a
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_ac
    .catchall {:try_start_9a .. :try_end_ac} :catchall_ed

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto :goto_43

    :catch_b1
    move-exception v0

    :try_start_b2
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/facebook/z;

    invoke-direct {v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_ed

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto/16 :goto_43

    :catch_cf
    move-exception v0

    :try_start_d0
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/facebook/z;

    invoke-direct {v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_e7
    .catchall {:try_start_d0 .. :try_end_e7} :catchall_ed

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto/16 :goto_43

    :catchall_ed
    move-exception v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_f2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_6c

    :cond_f6
    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_55

    :cond_fc
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_55
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/facebook/bn;->a:Z

    if-nez v0, :cond_f

    if-nez p0, :cond_f

    if-nez p3, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    if-ne v3, v0, :cond_74

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    :try_start_21
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "body"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    :goto_31
    const-string v6, "code"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_56
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3e} :catch_66

    :goto_3e
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4b

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, v3, :cond_76

    :cond_4b
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Unexpected number of results"

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    const/16 v1, 0xc8

    goto :goto_31

    :catch_56
    move-exception v1

    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v1}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    goto :goto_3e

    :catch_66
    move-exception v1

    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v1}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_74
    move-object v1, p2

    goto :goto_3e

    :cond_76
    check-cast v1, Lorg/json/JSONArray;

    :goto_78
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_b1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    :try_start_84
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, v3, p3, p2}, Lcom/facebook/bn;->a(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/bn;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8f} :catch_93
    .catch Lcom/facebook/z; {:try_start_84 .. :try_end_8f} :catch_a2

    :goto_8f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_78

    :catch_93
    move-exception v3

    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v3}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :catch_a2
    move-exception v3

    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v3}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_b1
    return-object v4
.end method

.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_24

    new-instance v4, Lcom/facebook/bn;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    new-instance v5, Lcom/facebook/ac;

    invoke-direct {v5, p1, p2}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_24
    return-object v3
.end method

.method private static d()Lcom/facebook/g/b;
    .registers 4

    sget-object v0, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lcom/facebook/g/b;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/g/j;

    invoke-direct {v3}, Lcom/facebook/g/j;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/g/j;)V

    sput-object v1, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    :cond_18
    sget-object v0, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/ac;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    return-object v0
.end method

.method public final b()Lcom/facebook/h/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    return-object v0
.end method

.method public final c()Lcom/facebook/h/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    invoke-interface {v0}, Lcom/facebook/h/b;->b()Lcom/facebook/h/b;

    move-result-object v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v1, "%d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_57

    move-result-object v0

    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/bn;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    const/16 v0, 0xc8

    goto :goto_10

    :catch_57
    move-exception v0

    const-string v0, "unknown"

    goto :goto_1a
.end method
