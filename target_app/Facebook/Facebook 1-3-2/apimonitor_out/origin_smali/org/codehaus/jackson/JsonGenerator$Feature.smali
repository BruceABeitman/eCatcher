.class public final enum Lorg/codehaus/jackson/JsonGenerator$Feature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/JsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v3, v2}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    new-instance v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v4, v2}, Lorg/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/codehaus/jackson/JsonGenerator$Feature;

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sput-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->$VALUES:[Lorg/codehaus/jackson/JsonGenerator$Feature;

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

    iput-boolean p3, p0, Lorg/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lorg/codehaus/jackson/JsonGenerator$Feature;->values()[Lorg/codehaus/jackson/JsonGenerator$Feature;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonGenerator$Feature;
    .registers 2

    const-class v0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonGenerator$Feature;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonGenerator$Feature;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->$VALUES:[Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
