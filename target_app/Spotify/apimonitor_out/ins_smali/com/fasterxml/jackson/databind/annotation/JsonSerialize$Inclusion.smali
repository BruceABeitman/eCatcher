.class public final enum Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.super Ljava/lang/Enum;
.source "SourceFile"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.field public static final enum ALWAYS:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.field public static final enum NON_DEFAULT:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.field public static final enum NON_EMPTY:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.field public static final enum NON_NULL:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
const-string v1, "ALWAYS"
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ALWAYS:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
const-string v1, "NON_NULL"
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
const-string v1, "NON_DEFAULT"
invoke-direct {v0, v1, v4}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
const-string v1, "NON_EMPTY"
invoke-direct {v0, v1, v5}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_EMPTY:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
const/4 v0, 0x4
new-array v0, v0, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
sget-object v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ALWAYS:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
aput-object v1, v0, v2
sget-object v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_NULL:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->NON_EMPTY:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
aput-object v1, v0, v5
sput-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;
return-object v0
.end method