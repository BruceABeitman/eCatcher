.class public Lcom/twidroid/net/c/m;
.super Lcom/twidroid/net/c/n;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern; = null

.field public static final b:Ljava/util/regex/Pattern; = null

.field private static final k:Ljava/lang/String; = "0be871dcd4992feeb7bf597fc35d7a4a"

.field private static final l:Ljava/lang/String; = "Twidroyd"

.field private static final m:Ljava/lang/String; = "TMIApi"


# instance fields
.field private n:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\b(http://)?(m\\.tmi\\.me|tmi\\.me)/([a-zA-Z0-9]+$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;

    const-string v0, "http://m.tmi.me/([A-Za-z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/c/m;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/net/c/n;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u2026.. "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " ... "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " .. "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "... "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".. "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twidroid/net/c/m;->n:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/twidroid/net/c/m;->n:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lcom/twidroid/net/c/m;->n:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v0, p0, Lcom/twidroid/net/c/m;->n:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_b

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_31
    const-string v0, ""

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V
    .registers 5

    :try_start_0
    const-string v0, "TMIApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tweet"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/twidroid/net/c/m;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_22
    const-string v0, ""
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_10

    :catch_25
    move-exception v0

    const-string v0, ""

    goto :goto_10
.end method


# virtual methods
.method public a(Lcom/twidroid/ui/StringUrlSpan;)Lcom/twidroid/ui/StringUrlSpan;
    .registers 5

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_c
    :goto_c
    return-object p1

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v0}, Lcom/twidroid/net/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    sget-object v1, Lcom/twidroid/d/k;->a:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    sget-object v1, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/twidroid/ui/StringUrlSpan;->b(Landroid/text/Spannable;)Lcom/twidroid/ui/StringUrlSpan;

    move-result-object p1

    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "tmi.me"

    return-object v0
.end method

.method public a(Lcom/twidroid/net/c/n;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "application"

    const-string v3, "Twidroyd"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api_key"

    const-string v3, "0be871dcd4992feeb7bf597fc35d7a4a"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "username"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->g:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "direct_message"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p1, Lcom/twidroid/net/c/n;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_40

    const-string v2, "in_reply"

    iget-wide v3, p1, Lcom/twidroid/net/c/n;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v2, p1, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    if-eqz v2, :cond_4b

    const-string v2, "in_reply_user"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :try_start_4b
    new-instance v2, Lcom/ubermedia/net/e;

    invoke-direct {v2}, Lcom/ubermedia/net/e;-><init>()V

    const-string v3, "http://tmi.me/api/new.php"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/twidroid/net/c/m;->a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V

    iget-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5c} :catch_5d

    :goto_5c
    return-object v0

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://tmi.me/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/net/c/m;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object p1

    :cond_34
    :goto_34
    return-object p1

    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method public a(Ljava/lang/String;JLcom/twidroid/model/twitter/c;)V
    .registers 5

    return-void
.end method
