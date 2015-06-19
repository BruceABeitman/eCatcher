.class public final enum Lcom/fasterxml/jackson/a/n;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/a/n;

.field public static final enum b:Lcom/fasterxml/jackson/a/n;

.field public static final enum c:Lcom/fasterxml/jackson/a/n;

.field public static final enum d:Lcom/fasterxml/jackson/a/n;

.field public static final enum e:Lcom/fasterxml/jackson/a/n;

.field public static final enum f:Lcom/fasterxml/jackson/a/n;

.field public static final enum g:Lcom/fasterxml/jackson/a/n;

.field public static final enum h:Lcom/fasterxml/jackson/a/n;

.field private static final synthetic j:[Lcom/fasterxml/jackson/a/n;


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

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->a:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->b:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->c:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->e:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->f:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->g:Lcom/fasterxml/jackson/a/n;

    new-instance v0, Lcom/fasterxml/jackson/a/n;

    const-string v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/n;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fasterxml/jackson/a/n;

    sget-object v1, Lcom/fasterxml/jackson/a/n;->a:Lcom/fasterxml/jackson/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/a/n;->b:Lcom/fasterxml/jackson/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/a/n;->c:Lcom/fasterxml/jackson/a/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/a/n;->d:Lcom/fasterxml/jackson/a/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/a/n;->e:Lcom/fasterxml/jackson/a/n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/a/n;->f:Lcom/fasterxml/jackson/a/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/a/n;->g:Lcom/fasterxml/jackson/a/n;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/a/n;->h:Lcom/fasterxml/jackson/a/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/a/n;->j:[Lcom/fasterxml/jackson/a/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/a/n;->i:Z

    return-void
.end method

.method public static a()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/fasterxml/jackson/a/n;->values()[Lcom/fasterxml/jackson/a/n;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-direct {v4}, Lcom/fasterxml/jackson/a/n;->c()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v4

    or-int/2addr v0, v4

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/n;->i:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/a/n;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/a/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/n;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/a/n;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/a/n;->j:[Lcom/fasterxml/jackson/a/n;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/a/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/a/n;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/n;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
