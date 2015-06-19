.class public final enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.field public static final enum EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.field public static final enum EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.field public static final enum PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.field public static final enum WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.field public static final enum WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const-string v1, "PROPERTY"
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const-string v1, "WRAPPER_OBJECT"
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const-string v1, "WRAPPER_ARRAY"
invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const-string v1, "EXTERNAL_PROPERTY"
invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const-string v1, "EXISTING_PROPERTY"
invoke-direct {v0, v1, v6}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
const/4 v0, 0x5
new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
aput-object v1, v0, v2
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
aput-object v1, v0, v6
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.registers 2
const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-object v0
.end method