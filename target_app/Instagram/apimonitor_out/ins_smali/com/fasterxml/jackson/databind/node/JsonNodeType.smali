.class public final enum Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.super Ljava/lang/Enum;
.source "JsonNodeType.java"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.field public static final enum STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "ARRAY"
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "BINARY"
invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "BOOLEAN"
invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "MISSING"
invoke-direct {v0, v1, v6}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "NULL"
invoke-direct {v0, v1, v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "NUMBER"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "OBJECT"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "POJO"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
new-instance v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const-string v1, "STRING"
const/16 v2, 0x8
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
const/16 v0, 0x9
new-array v0, v0, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v1, v0, v6
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
aput-object v2, v0, v1
sput-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->$VALUES:[Lcom/fasterxml/jackson/databind/node/JsonNodeType;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-object v0
.end method