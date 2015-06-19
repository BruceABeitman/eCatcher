.class Lcom/blackberry/ids/TokenTempCache;
.super Ljava/lang/Object;
.source "TokenTempCache.java"


# static fields
.field public static final BBM_TOKEN_NAME:Ljava/lang/String; = "BBM_TOKEN"

.field public static final CHANNEL_TOK_NAME:Ljava/lang/String; = "CHANNELS_TOKEN"

.field public static final DREAMS_ADS_TOK_NAME:Ljava/lang/String; = "DREAMS_ADS_TOKEN"

.field public static final DREAMS_TAG_TOK_NAME:Ljava/lang/String; = "DREAMS_TAG_TOKEN"

.field public static final GIST_XPLAT_TOK_NAME:Ljava/lang/String; = "GIST_XPLAT_TOKEN"

.field public static final ICRS_XPLAT_TOK_NAME:Ljava/lang/String; = "ICRS_XPLAT_TOKEN"

.field public static final SIP_TOKEN_NAME:Ljava/lang/String; = "SIP_TOKEN"

.field private static final a:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final b:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final c:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final d:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final e:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final f:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

.field private static final g:Lcom/blackberry/ids/TokenTempCache$TokenInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "SIP_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->a:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "BBM_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->b:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "CHANNELS_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->c:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "DREAMS_ADS_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->d:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "DREAMS_TAG_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->e:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "ICRS_XPLAT_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->f:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    new-instance v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    const-string v1, "GIST_XPLAT_TOKEN"

    invoke-direct {v0, v1}, Lcom/blackberry/ids/TokenTempCache$TokenInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/blackberry/ids/TokenTempCache;->g:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v4

    if-nez v4, :cond_18

    const-string v0, "TokenTempCache - saveToken - %s : No reference found !"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_17
    return-void

    :cond_18
    :try_start_18
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_36

    move-result-wide v0

    :goto_1c
    cmp-long v5, v0, v2

    if-nez v5, :cond_47

    const-string v0, "TokenTempCache - saveToken - %s : Expiry time is still 0, weird"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    iput-wide v2, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    goto :goto_17

    :catch_36
    move-exception v0

    const-string v0, "TokenTempCache - saveToken - %s : exception during int conversion for expiry - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    aput-object v5, v1, v6

    aput-object p3, v1, v7

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_1c

    :cond_47
    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6d

    const-wide/16 v2, 0x61a8

    sub-long/2addr v0, v2

    :goto_51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    add-long/2addr v0, v2

    iput-wide v0, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    iput-object p1, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    iput-object p2, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v2

    iget-object v3, v4, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, p1, p2, v0}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_6d
    const-wide/16 v2, 0x4

    div-long v2, v0, v2

    sub-long/2addr v0, v2

    goto :goto_51
.end method

.method static a(Ljava/lang/String;)Z
    .registers 12

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "TokenTempCache - isTokenValid - No token reference found for - %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_13
    return v0

    :cond_14
    iget-object v3, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_24
    const-string v3, "TokenTempCache - isTokenValid - %s not found"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_30
    iget-wide v3, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    cmp-long v5, v3, v9

    if-lez v5, :cond_50

    const-string v2, "TokenTempCache - isTokenValid - TOK : %s is Valid for %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_13

    :cond_50
    const-string v3, "TokenTempCache - isTokenValid - %s expired!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v1, ""

    iput-object v1, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    iput-wide v9, v2, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    goto :goto_13
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static c(Ljava/lang/String;)[Lcom/blackberry/ids/TokenParam;
    .registers 9

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-wide v2, v1, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_34

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/blackberry/ids/TokenParam;

    const/4 v4, 0x0

    new-instance v5, Lcom/blackberry/ids/TokenParam;

    const-string v6, "TOKEN_SECRET"

    iget-object v1, v1, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lcom/blackberry/ids/TokenParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    const/4 v1, 0x1

    new-instance v4, Lcom/blackberry/ids/TokenParam;

    const-string v5, "EXPIRES_IN"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/blackberry/ids/TokenParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method static d(Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J

    const-string v1, ""

    iput-object v1, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v1

    iget-object v2, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V

    const-string v1, "TokenTempCache - clearRPToken - %s CLEARED!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blackberry/ids/TokenTempCache;->f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "Unknown_TOKEN"

    goto :goto_8
.end method

.method private static final f(Ljava/lang/String;)Lcom/blackberry/ids/TokenTempCache$TokenInfo;
    .registers 3

    const-string v0, "urn:bbid:v1:sipalaska"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->a:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "urn:bbid:v1:bbmalaska"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->b:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_16
    const-string v0, "urn:bbid:v1:bbmchannels-alaska"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->c:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_21
    const-string v0, "urn:bbid:v1:dreams-ad-alaska"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->d:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_2c
    const-string v0, "urn:bbid:v1:dreams-tag-alaska"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->e:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_37
    const-string v0, "urn:bbid:v1:icrs-xplatform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->f:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_42
    const-string v0, "urn:bbid:v1:gist-xplatform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/blackberry/ids/TokenTempCache;->g:Lcom/blackberry/ids/TokenTempCache$TokenInfo;

    goto :goto_a

    :cond_4d
    const-string v0, "TokenTempCache - getTokenInfo - Could not get reference! - Unknown AppliesTo"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_a
.end method
