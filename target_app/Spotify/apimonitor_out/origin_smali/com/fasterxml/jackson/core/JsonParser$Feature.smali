.class public final enum Lcom/fasterxml/jackson/core/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;


# instance fields
.field private final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

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

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    return v0
.end method

.method public final getMask()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
