.class public Lcom/twidroid/net/c/r;
.super Lcom/twidroid/net/c/n;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern; = null

.field public static final b:Ljava/util/regex/Pattern; = null

.field private static final k:Ljava/lang/String; = "fpNVzRU3YrvCDhHYTT6p0o1q405BbEEl"

.field private static final l:Ljava/lang/String; = "TwitlongerApi"


# instance fields
.field private m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\b(http://)?(tl\\.gd|www.twitlonger.com/show)/([a-zA-Z0-9_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;

    const-string v0, "http://www.twitlonger.com/show/([A-Za-z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/c/r;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/net/c/n;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " ... "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " (cont) "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "... "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twidroid/net/c/r;->m:[Ljava/lang/String;

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
    iget-object v2, p0, Lcom/twidroid/net/c/r;->m:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lcom/twidroid/net/c/r;->m:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v0, p0, Lcom/twidroid/net/c/r;->m:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_b

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_31
    const-string v0, ""

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tweet_content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwitlongerApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    :cond_12
    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
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
    invoke-virtual {p0, v0}, Lcom/twidroid/net/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v0, "Twitlonger"

    return-object v0
.end method

.method public a(Lcom/twidroid/net/c/n;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p1, Lcom/twidroid/net/c/n;->g:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-API-KEY"

    const-string v3, "fpNVzRU3YrvCDhHYTT6p0o1q405BbEEl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v0, v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v0, v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v0, v0, v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "content"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p1, Lcom/twidroid/net/c/n;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5d

    const-string v2, "reply_to_id"

    iget-wide v3, p1, Lcom/twidroid/net/c/n;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    iget-object v2, p1, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    if-eqz v2, :cond_68

    const-string v2, "reply_to_screen_name"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->f:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    new-instance v2, Lcom/ubermedia/net/e;

    invoke-direct {v2}, Lcom/ubermedia/net/e;-><init>()V

    :try_start_6d
    const-string v3, "http://api.twitlonger.com/2/posts"

    invoke-static {v3, v0, v1, v2}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twidroid/net/c/r;->a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V

    iget-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_79

    :goto_78
    return-object v0

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_78
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    sget-object v0, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-API-KEY"

    const-string v3, "fpNVzRU3YrvCDhHYTT6p0o1q405BbEEl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.twitlonger.com/2/posts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/net/c/r;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object p1

    :cond_39
    :goto_39
    return-object p1

    :catch_3a
    move-exception v0

    goto :goto_39
.end method

.method public a(Ljava/lang/String;JLcom/twidroid/model/twitter/c;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-API-KEY"

    const-string v3, "fpNVzRU3YrvCDhHYTT6p0o1q405BbEEl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v0, v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v0, v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v0, v0, v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "twitter_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/ubermedia/net/e;

    invoke-direct {v2}, Lcom/ubermedia/net/e;-><init>()V

    :try_start_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.twitlonger.com/2/posts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/ubermedia/net/d;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_65} :catch_66

    :goto_65
    return-void

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method
