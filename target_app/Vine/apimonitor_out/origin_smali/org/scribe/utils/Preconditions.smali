.class public Lorg/scribe/utils/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Received an invalid parameter"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z][a-zA-Z0-9+.-]*://\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(ZLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_16

    :cond_c
    const-string v0, "Received an invalid parameter"

    :goto_e
    if-nez p0, :cond_18

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object v0, p1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public static checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    :cond_16
    return-void
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    return-void
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
