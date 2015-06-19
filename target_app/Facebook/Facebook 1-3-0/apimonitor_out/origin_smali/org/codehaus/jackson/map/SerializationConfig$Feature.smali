.class public final enum Lorg/codehaus/jackson/map/SerializationConfig$Feature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/SerializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/map/SerializationConfig$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

.field public static final enum WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "AUTO_DETECT_GETTERS"

    invoke-direct {v0, v1, v4, v3}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v1, v3, v3}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    invoke-direct {v0, v1, v5, v3}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "WRITE_NULL_PROPERTIES"

    invoke-direct {v0, v1, v6, v3}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "WRITE_DATES_AS_TIMESTAMPS"

    invoke-direct {v0, v1, v7, v3}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const-string v1, "INDENT_OUTPUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->$VALUES:[Lorg/codehaus/jackson/map/SerializationConfig$Feature;

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

    iput-boolean p3, p0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->values()[Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .registers 2

    const-class v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->$VALUES:[Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
