.class public final enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.super Ljava/lang/Enum;
.source "JsonTypeInfo.java"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field public static final enum CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field public static final enum CUSTOM:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field public static final enum MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field public static final enum NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field public static final enum NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.field private final _defaultPropertyName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const-string v1, "NONE"
const/4 v2, 0x0
invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const-string v1, "CLASS"
const-string v2, "@class"
invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const-string v1, "MINIMAL_CLASS"
const-string v2, "@c"
invoke-direct {v0, v1, v5, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const-string v1, "NAME"
const-string v2, "@type"
invoke-direct {v0, v1, v6, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
new-instance v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const-string v1, "CUSTOM"
const/4 v2, 0x0
invoke-direct {v0, v1, v7, v2}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
const/4 v0, 0x5
new-array v0, v0, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
aput-object v1, v0, v6
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
aput-object v1, v0, v7
sput-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.registers 2
const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->$VALUES:[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
return-object v0
.end method
.method public getDefaultPropertyName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->_defaultPropertyName:Ljava/lang/String;
return-object v0
.end method