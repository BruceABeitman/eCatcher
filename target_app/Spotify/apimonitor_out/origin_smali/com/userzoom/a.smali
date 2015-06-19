.class public final enum Lcom/userzoom/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/userzoom/a;

.field private static enum b:Lcom/userzoom/a;

.field private static enum c:Lcom/userzoom/a;

.field private static enum d:Lcom/userzoom/a;

.field private static enum e:Lcom/userzoom/a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/userzoom/a;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2}, Lcom/userzoom/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/userzoom/a;->a:Lcom/userzoom/a;

    new-instance v0, Lcom/userzoom/a;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2}, Lcom/userzoom/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/userzoom/a;->b:Lcom/userzoom/a;

    new-instance v0, Lcom/userzoom/a;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2}, Lcom/userzoom/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/userzoom/a;->c:Lcom/userzoom/a;

    new-instance v0, Lcom/userzoom/a;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2}, Lcom/userzoom/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/userzoom/a;->d:Lcom/userzoom/a;

    new-instance v0, Lcom/userzoom/a;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2}, Lcom/userzoom/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/userzoom/a;->e:Lcom/userzoom/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/userzoom/a;

    sget-object v1, Lcom/userzoom/a;->a:Lcom/userzoom/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/userzoom/a;->b:Lcom/userzoom/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/userzoom/a;->c:Lcom/userzoom/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/userzoom/a;->d:Lcom/userzoom/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/userzoom/a;->e:Lcom/userzoom/a;

    aput-object v1, v0, v7

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/userzoom/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/a;->f:Ljava/lang/String;

    return-object v0
.end method
