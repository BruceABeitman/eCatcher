.class public final enum Lcom/fasterxml/jackson/a/f;
.super Ljava/lang/Enum;
.source "JsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fasterxml/jackson/a/f;

.field public static final enum b:Lcom/fasterxml/jackson/a/f;

.field private static final synthetic d:[Lcom/fasterxml/jackson/a/f;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fasterxml/jackson/a/f;

    const-string v1, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    new-instance v0, Lcom/fasterxml/jackson/a/f;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fasterxml/jackson/a/f;

    sget-object v1, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fasterxml/jackson/a/f;->d:[Lcom/fasterxml/jackson/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/f;->c:Z

    return-void
.end method

.method public static a()I
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/fasterxml/jackson/a/f;->values()[Lcom/fasterxml/jackson/a/f;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-direct {v4}, Lcom/fasterxml/jackson/a/f;->c()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/fasterxml/jackson/a/f;->b()I

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

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/f;->c:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/a/f;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/f;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/a/f;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/a/f;->d:[Lcom/fasterxml/jackson/a/f;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/a/f;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/f;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
