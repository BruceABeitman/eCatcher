.class public final enum Lorg/codehaus/jackson/JsonToken;
.super Ljava/lang/Enum;
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonToken;
.field public static final enum END_ARRAY:Lorg/codehaus/jackson/JsonToken;
.field public static final enum END_OBJECT:Lorg/codehaus/jackson/JsonToken;
.field public static final enum FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
.field public static final enum NOT_AVAILABLE:Lorg/codehaus/jackson/JsonToken;
.field public static final enum START_ARRAY:Lorg/codehaus/jackson/JsonToken;
.field public static final enum START_OBJECT:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
.field public static final enum VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
.field final _serialized:Ljava/lang/String;
.field final _serializedBytes:[B
.field final _serializedChars:[C
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "NOT_AVAILABLE"
invoke-direct {v0, v1, v5, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "START_OBJECT"
const-string v2, "{"
invoke-direct {v0, v1, v6, v2}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "END_OBJECT"
const-string v2, "}"
invoke-direct {v0, v1, v7, v2}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "START_ARRAY"
const-string v2, "["
invoke-direct {v0, v1, v8, v2}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "END_ARRAY"
const/4 v2, 0x4
const-string v3, "]"
invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "FIELD_NAME"
const/4 v2, 0x5
invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_EMBEDDED_OBJECT"
const/4 v2, 0x6
invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_STRING"
const/4 v2, 0x7
invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_NUMBER_INT"
const/16 v2, 0x8
invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_NUMBER_FLOAT"
const/16 v2, 0x9
invoke-direct {v0, v1, v2, v4}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_TRUE"
const/16 v2, 0xa
const-string v3, "true"
invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_FALSE"
const/16 v2, 0xb
const-string v3, "false"
invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
new-instance v0, Lorg/codehaus/jackson/JsonToken;
const-string v1, "VALUE_NULL"
const/16 v2, 0xc
const-string v3, "null"
invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
const/16 v0, 0xd
new-array v0, v0, [Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lorg/codehaus/jackson/JsonToken;
aput-object v1, v0, v5
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
aput-object v1, v0, v6
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
aput-object v1, v0, v7
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
aput-object v1, v0, v8
const/4 v1, 0x4
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
aput-object v2, v0, v1
sput-object v0, Lorg/codehaus/jackson/JsonToken;->$VALUES:[Lorg/codehaus/jackson/JsonToken;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
if-nez p3, :cond_d
iput-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;
iput-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedChars:[C
iput-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedBytes:[B
:cond_c
return-void
:cond_d
iput-object p3, p0, Lorg/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;
invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedChars:[C
iget-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedChars:[C
array-length v0, v0
new-array v1, v0, [B
iput-object v1, p0, Lorg/codehaus/jackson/JsonToken;->_serializedBytes:[B
const/4 v1, 0x0
:goto_1d
if-ge v1, v0, :cond_c
iget-object v2, p0, Lorg/codehaus/jackson/JsonToken;->_serializedBytes:[B
iget-object v3, p0, Lorg/codehaus/jackson/JsonToken;->_serializedChars:[C
aget-char v3, v3, v1
int-to-byte v3, v3
aput-byte v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1d
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonToken;
.registers 2
const-class v0, Lorg/codehaus/jackson/JsonToken;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonToken;
return-object p0
.end method
.method public static values()[Lorg/codehaus/jackson/JsonToken;
.registers 1
sget-object v0, Lorg/codehaus/jackson/JsonToken;->$VALUES:[Lorg/codehaus/jackson/JsonToken;
invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonToken;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/codehaus/jackson/JsonToken;
return-object v0
.end method
.method public asByteArray()[B
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedBytes:[B
return-object v0
.end method
.method public asCharArray()[C
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serializedChars:[C
return-object v0
.end method
.method public asString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;
return-object v0
.end method
.method public isNumeric()Z
.registers 2
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-eq p0, v0, :cond_8
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;
if-ne p0, v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isScalarValue()Z
.registers 3
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I
move-result v0
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I
move-result v1
if-lt v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method