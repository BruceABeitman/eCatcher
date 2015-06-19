.class public Lcom/bbm/util/dd;
.super Ljava/lang/Object;
.source "SearchStringMatcher.java"


# static fields
.field private static final b:Lcom/bbm/util/dd;

.field private static final c:Lcom/bbm/util/dd;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bbm/util/de;

    invoke-direct {v0}, Lcom/bbm/util/de;-><init>()V

    sput-object v0, Lcom/bbm/util/dd;->b:Lcom/bbm/util/dd;

    new-instance v0, Lcom/bbm/util/df;

    invoke-direct {v0}, Lcom/bbm/util/df;-><init>()V

    sput-object v0, Lcom/bbm/util/dd;->c:Lcom/bbm/util/dd;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ":D"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#=-s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\\=D/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ":|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/util/dd;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/dd;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/util/dd;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/util/dd;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/util/dd;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/bbm/util/dd;->b:Lcom/bbm/util/dd;

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Lcom/bbm/util/dd;

    invoke-direct {v0, p0}, Lcom/bbm/util/dd;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_8

    :catch_f
    move-exception v0

    sget-object v0, Lcom/bbm/util/dd;->c:Lcom/bbm/util/dd;

    goto :goto_8
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/dd;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
