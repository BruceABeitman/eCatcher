.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "START_OBJECT"

    const-string v2, "{"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "END_OBJECT"

    const-string v2, "}"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "START_ARRAY"

    const-string v2, "["

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "END_ARRAY"

    const-string v2, "]"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "FIELD_NAME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0xa

    const-string v3, "true"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0xb

    const-string v3, "false"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xc

    const-string v3, "null"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-nez p3, :cond_47

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    :cond_e
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    const/16 v0, 0xa

    if-eq p4, v0, :cond_18

    const/16 v0, 0x9

    if-ne p4, v0, :cond_65

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    const/4 v0, 0x7

    if-eq p4, v0, :cond_22

    const/16 v0, 0x8

    if-ne p4, v0, :cond_67

    :cond_22
    move v0, v2

    :goto_23
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    if-eq p4, v2, :cond_2a

    const/4 v0, 0x3

    if-ne p4, v0, :cond_69

    :cond_2a
    move v0, v2

    :goto_2b
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    const/4 v0, 0x2

    if-eq p4, v0, :cond_33

    const/4 v0, 0x4

    if-ne p4, v0, :cond_6b

    :cond_33
    move v0, v2

    :goto_34
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    if-nez v0, :cond_6d

    const/4 v0, 0x5

    if-eq p4, v0, :cond_6d

    const/4 v0, -0x1

    if-eq p4, v0, :cond_6d

    :goto_44
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return-void

    :cond_47
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    array-length v3, v0

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    move v0, v1

    :goto_57
    if-ge v0, v3, :cond_e

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    aget-char v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_65
    move v0, v1

    goto :goto_19

    :cond_67
    move v0, v1

    goto :goto_23

    :cond_69
    move v0, v1

    goto :goto_2b

    :cond_6b
    move v0, v1

    goto :goto_34

    :cond_6d
    move v2, v1

    goto :goto_44
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 2

    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public final asByteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    return-object v0
.end method

.method public final asCharArray()[C
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    return v0
.end method

.method public final isBoolean()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    return v0
.end method

.method public final isNumeric()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    return v0
.end method

.method public final isScalarValue()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return v0
.end method

.method public final isStructEnd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    return v0
.end method

.method public final isStructStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    return v0
.end method
