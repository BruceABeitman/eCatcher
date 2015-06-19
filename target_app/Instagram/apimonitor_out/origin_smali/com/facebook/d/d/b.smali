.class public final Lcom/facebook/d/d/b;
.super Ljava/lang/Object;
.source "AppBuildInfoReader.java"


# static fields
.field private static a:Lcom/facebook/d/d/a;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/d/d/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[0-9]+L$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/d/d/b;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/d/d/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/d/d/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/d/d/b;->d:Lcom/facebook/d/d/c;

    iget-object v0, p0, Lcom/facebook/d/d/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/facebook/d/d/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d/d/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/d/d/b;->a(Ljava/lang/String;)Lcom/facebook/d/d/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/d/d/a;
    .registers 9

    const-string v0, "com.facebook.versioncontrol.revision"

    invoke-direct {p0, v0, p1}, Lcom/facebook/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.facebook.versioncontrol.branch"

    invoke-direct {p0, v0, p1}, Lcom/facebook/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.facebook.build_time"

    invoke-direct {p0, v0, p1}, Lcom/facebook/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v5, ""

    invoke-static {v0}, Lcom/facebook/d/d/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {v0}, Lcom/facebook/d/d/b;->c(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/facebook/d/d/b;->a(J)Ljava/lang/String;

    move-result-object v5

    :cond_24
    new-instance v0, Lcom/facebook/d/d/a;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/d/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    const-string v1, "PST8PDT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/facebook/d/d/b;->a:Lcom/facebook/d/d/a;

    if-nez v0, :cond_14

    new-instance v0, Lcom/facebook/d/d/b;

    new-instance v1, Lcom/facebook/d/d/c;

    invoke-direct {v1, p0}, Lcom/facebook/d/d/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/d/d/b;-><init>(Landroid/content/Context;Lcom/facebook/d/d/c;)V

    invoke-direct {v0}, Lcom/facebook/d/d/b;->a()Lcom/facebook/d/d/a;

    move-result-object v0

    sput-object v0, Lcom/facebook/d/d/b;->a:Lcom/facebook/d/d/a;

    :cond_14
    sget-object v0, Lcom/facebook/d/d/b;->a:Lcom/facebook/d/d/a;

    iget-object v0, v0, Lcom/facebook/d/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/facebook/d/d/b;->d:Lcom/facebook/d/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_10

    sget-object v0, Lcom/facebook/d/d/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static c(Ljava/lang/String;)J
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
