.class public final Lcom/google/zxing/client/a/ad;
.super Lcom/google/zxing/client/a/u;
.source "URIResultParser.java"


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-zA-Z0-9]{2,}:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/a/ad;->b:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z0-9\\-]+\\.)+[a-zA-Z0-9\\-]{2,}(:\\d{1,5})?(/|\\?|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/a/ad;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/client/a/ad;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    sget-object v1, Lcom/google/zxing/client/a/ad;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_13

    :cond_26
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/a/ad;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "URL:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "URI:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_15
    new-instance v0, Lcom/google/zxing/client/a/ac;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-object v0

    :cond_24
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/a/ad;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/google/zxing/client/a/ac;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_34
    move-object v0, v1

    goto :goto_23
.end method
