.class public final enum Lorg/codehaus/jackson/JsonParser$NumberType;
.super Ljava/lang/Enum;
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum INT:Lorg/codehaus/jackson/JsonParser$NumberType;
.field public static final enum LONG:Lorg/codehaus/jackson/JsonParser$NumberType;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "INT"
invoke-direct {v0, v1, v3}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "LONG"
invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "BIG_INTEGER"
invoke-direct {v0, v1, v5}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "FLOAT"
invoke-direct {v0, v1, v6}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "DOUBLE"
invoke-direct {v0, v1, v7}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;
new-instance v0, Lorg/codehaus/jackson/JsonParser$NumberType;
const-string v1, "BIG_DECIMAL"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParser$NumberType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;
const/4 v0, 0x6
new-array v0, v0, [Lorg/codehaus/jackson/JsonParser$NumberType;
sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v1, v0, v3
sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v1, v0, v4
sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v1, v0, v5
sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v1, v0, v6
sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;
aput-object v2, v0, v1
sput-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->$VALUES:[Lorg/codehaus/jackson/JsonParser$NumberType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser$NumberType;
.registers 2
const-class v0, Lorg/codehaus/jackson/JsonParser$NumberType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonParser$NumberType;
return-object p0
.end method
.method public static values()[Lorg/codehaus/jackson/JsonParser$NumberType;
.registers 1
sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->$VALUES:[Lorg/codehaus/jackson/JsonParser$NumberType;
invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonParser$NumberType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/codehaus/jackson/JsonParser$NumberType;
return-object v0
.end method