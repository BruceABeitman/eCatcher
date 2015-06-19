.class public final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.super Ljava/lang/Enum;
.source "JsonFormatTypes.java"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.field public static final enum STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "STRING"
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "NUMBER"
invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "INTEGER"
invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "BOOLEAN"
invoke-direct {v0, v1, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "OBJECT"
invoke-direct {v0, v1, v7}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "ARRAY"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "NULL"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
new-instance v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const-string v1, "ANY"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
const/16 v0, 0x8
new-array v0, v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v1, v0, v6
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
aput-object v2, v0, v1
sput-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static forValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.registers 2
invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
return-object v0
.end method
.method public final value()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
return-object v0
.end method