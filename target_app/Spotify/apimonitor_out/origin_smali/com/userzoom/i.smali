.class public final enum Lcom/userzoom/i;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/userzoom/i;

.field private static enum b:Lcom/userzoom/i;

.field private static enum c:Lcom/userzoom/i;

.field private static enum d:Lcom/userzoom/i;

.field private static enum e:Lcom/userzoom/i;

.field private static enum f:Lcom/userzoom/i;

.field private static enum g:Lcom/userzoom/i;

.field private static enum h:Lcom/userzoom/i;

.field private static final synthetic j:[Lcom/userzoom/i;


# instance fields
.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->a:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->b:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->c:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->d:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->e:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->f:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->g:Lcom/userzoom/i;

    new-instance v0, Lcom/userzoom/i;

    const-string v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/userzoom/i;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/userzoom/i;->h:Lcom/userzoom/i;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/userzoom/i;

    sget-object v1, Lcom/userzoom/i;->a:Lcom/userzoom/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/userzoom/i;->b:Lcom/userzoom/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/userzoom/i;->c:Lcom/userzoom/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/userzoom/i;->d:Lcom/userzoom/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/userzoom/i;->e:Lcom/userzoom/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/userzoom/i;->f:Lcom/userzoom/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/userzoom/i;->g:Lcom/userzoom/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/userzoom/i;->h:Lcom/userzoom/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/userzoom/i;->j:[Lcom/userzoom/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/userzoom/i;->i:Z

    return-void
.end method

.method public static a()I
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/userzoom/i;->j:[Lcom/userzoom/i;

    invoke-virtual {v0}, [Lcom/userzoom/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/userzoom/i;

    array-length v3, v0

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_1e

    aget-object v4, v0, v2

    iget-boolean v5, v4, Lcom/userzoom/i;->i:Z

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/userzoom/i;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method
