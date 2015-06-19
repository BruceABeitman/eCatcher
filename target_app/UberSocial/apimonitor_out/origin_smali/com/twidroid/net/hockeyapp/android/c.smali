.class public Lcom/twidroid/net/hockeyapp/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/c;->a:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/c;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v3, v4

    if-lez v3, :cond_3b

    :try_start_a
    const-string v3, "HockeySDK"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "ConfirmedFilenames"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_33

    move-result-object v1

    move-object v3, v1

    :goto_24
    if-eqz v3, :cond_32

    const/4 v1, 0x2

    array-length v5, v4

    :goto_28
    if-ge v2, v5, :cond_39

    aget-object v6, v4, v2

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    :cond_32
    :goto_32
    return v0

    :catch_33
    move-exception v3

    move-object v3, v1

    goto :goto_24

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_39
    move v0, v1

    goto :goto_32

    :cond_3b
    move v0, v2

    goto :goto_32
.end method

.method private static a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twidroid/net/hockeyapp/android/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twidroid/net/hockeyapp/android/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_16

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;)V
    .registers 13

    const/4 v0, 0x0

    const-string v1, "HockeyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for exceptions in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/twidroid/net/hockeyapp/android/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/c;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v3, :cond_144

    array-length v2, v3

    if-lez v2, :cond_144

    const-string v2, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stacktrace(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    array-length v2, v3

    if-ge v0, v2, :cond_144

    :try_start_4a
    aget-object v2, v3, v0

    invoke-static {p0, v2}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f7

    const-string v5, "HockeyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transmitting crash data: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "raw"

    invoke-direct {v8, v9, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "userID"

    const-string v9, ".stacktrace"

    const-string v10, ".user"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "contact"

    const-string v9, ".stacktrace"

    const-string v10, ".contact"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "description"

    const-string v9, ".stacktrace"

    const-string v10, ".description"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdk"

    const-string v8, "HockeySDK"

    invoke-direct {v2, v4, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdk_version"

    const-string v8, "2.1.0"

    invoke-direct {v2, v4, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v2, v7, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_f6
    .catchall {:try_start_4a .. :try_end_f6} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_f6} :catch_111

    move-result-object v1

    :cond_f7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10b

    aget-object v2, v3, v0

    invoke-static {p0, v2}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_107

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->f()V

    :cond_107
    :goto_107
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_47

    :cond_10b
    if-eqz p1, :cond_107

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->g()V

    goto :goto_107

    :catch_111
    move-exception v2

    :try_start_112
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_12c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_126

    aget-object v2, v3, v0

    invoke-static {p0, v2}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_107

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->f()V

    goto :goto_107

    :cond_126
    if-eqz p1, :cond_107

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->g()V

    goto :goto_107

    :catchall_12c
    move-exception v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13e

    aget-object v0, v3, v0

    invoke-static {p0, v0}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_13d

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->f()V

    :cond_13d
    :goto_13d
    throw v2

    :cond_13e
    if-eqz p1, :cond_13d

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->g()V

    goto :goto_13d

    :cond_144
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_3b

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/twidroid/net/hockeyapp/android/d;->b()Ljava/lang/Boolean;

    move-result-object v0

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/twidroid/net/hockeyapp/android/c;->c(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    move v0, v2

    goto :goto_f

    :cond_33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/twidroid/net/hockeyapp/android/c;->d(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    goto :goto_30

    :cond_3b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/twidroid/net/hockeyapp/android/c;->d(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    goto :goto_30

    :cond_46
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "--"

    invoke-static {p0, p1, v0, v1}, Lcom/twidroid/net/hockeyapp/android/c;->e(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    goto :goto_30
.end method

.method static synthetic a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c;->e(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".user"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".contact"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".description"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V
    .registers 5

    const-string v0, "https://rink.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "https://rink.hockeyapp.net/"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    invoke-static {p0, p3, p4}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 7

    sput-object p1, Lcom/twidroid/net/hockeyapp/android/c;->b:Ljava/lang/String;

    sput-object p2, Lcom/twidroid/net/hockeyapp/android/c;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/twidroid/net/hockeyapp/android/b;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/c;->a:Ljava/lang/String;

    if-nez v0, :cond_f

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/b;->c:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/c;->a:Ljava/lang/String;

    :cond_f
    if-eqz p4, :cond_29

    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Lcom/twidroid/net/hockeyapp/android/d;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p3, v0, p5}, Lcom/twidroid/net/hockeyapp/android/c;->e(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_46
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_5b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_3a

    :goto_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_51
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_26} :catch_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_26} :catch_56

    goto :goto_14

    :catch_27
    move-exception v1

    :goto_28
    if-eqz v0, :cond_2d

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_4d

    :cond_2d
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    if-eqz v0, :cond_2d

    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_2d

    :catch_38
    move-exception v0

    goto :goto_2d

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    if-eqz v1, :cond_2d

    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_2d

    :catch_44
    move-exception v0

    goto :goto_2d

    :catchall_46
    move-exception v0

    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f

    :cond_4c
    :goto_4c
    throw v0

    :catch_4d
    move-exception v0

    goto :goto_2d

    :catch_4f
    move-exception v1

    goto :goto_4c

    :catchall_51
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_47

    :catch_56
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3b

    :catch_5b
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    const-string v0, "HockeyApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for exceptions in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/c;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    array-length v0, v2

    if-lez v0, :cond_78

    const-string v0, "HockeyApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " stacktrace(s)."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_43
    array-length v1, v2

    if-ge v0, v1, :cond_78

    :try_start_46
    const-string v1, "HockeyApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete stacktrace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v2, v0

    invoke-static {p0, v1}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_70} :catch_73

    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    :cond_78
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c;->d(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V
    .registers 10

    const-string v1, "https://rink.hockeyapp.net/"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    return-void
.end method

.method private static b()[Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Lcom/twidroid/net/hockeyapp/android/c$4;

    invoke-direct {v1}, Lcom/twidroid/net/hockeyapp/android/c$4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/twidroid/net/hockeyapp/android/c;->b()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "HockeySDK"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ConfirmedFilenames"

    const-string v3, "|"

    invoke-static {v0, v3}, Lcom/twidroid/net/hockeyapp/android/c;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method private static c(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/hockeyapp/android/c$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c$1;-><init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/hockeyapp/android/c$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c$2;-><init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/twidroid/net/hockeyapp/android/c;->c(Landroid/content/Context;)V

    new-instance v0, Lcom/twidroid/net/hockeyapp/android/c$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/c$3;-><init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/c$3;->start()V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v1, "HockeyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current handler class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    instance-of v1, v0, Lcom/twidroid/net/hockeyapp/android/g;

    if-nez v1, :cond_3a

    new-instance v1, Lcom/twidroid/net/hockeyapp/android/g;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/twidroid/net/hockeyapp/android/g;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    const-string v0, "HockeyApp"

    const-string v1, "Exception handler not set because version or package is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method
