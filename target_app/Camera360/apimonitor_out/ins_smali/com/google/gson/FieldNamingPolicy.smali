.class public abstract enum Lcom/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"
.implements Lcom/google/gson/FieldNamingStrategy;
.field private static final synthetic $VALUES:[Lcom/google/gson/FieldNamingPolicy;
.field public static final enum IDENTITY:Lcom/google/gson/FieldNamingPolicy;
.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;
.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;
.field public static final enum UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;
.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/gson/FieldNamingPolicy$1;
const-string/jumbo v1, "IDENTITY"
invoke-direct {v0, v1, v2}, Lcom/google/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;
new-instance v0, Lcom/google/gson/FieldNamingPolicy$2;
const-string/jumbo v1, "UPPER_CAMEL_CASE"
invoke-direct {v0, v1, v3}, Lcom/google/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;
new-instance v0, Lcom/google/gson/FieldNamingPolicy$3;
const-string/jumbo v1, "UPPER_CAMEL_CASE_WITH_SPACES"
invoke-direct {v0, v1, v4}, Lcom/google/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;
new-instance v0, Lcom/google/gson/FieldNamingPolicy$4;
const-string/jumbo v1, "LOWER_CASE_WITH_UNDERSCORES"
invoke-direct {v0, v1, v5}, Lcom/google/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;
new-instance v0, Lcom/google/gson/FieldNamingPolicy$5;
const-string/jumbo v1, "LOWER_CASE_WITH_DASHES"
invoke-direct {v0, v1, v6}, Lcom/google/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;
const/4 v0, 0x5
new-array v0, v0, [Lcom/google/gson/FieldNamingPolicy;
sget-object v1, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;
aput-object v1, v0, v2
sget-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;
aput-object v1, v0, v3
sget-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;
aput-object v1, v0, v4
sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;
aput-object v1, v0, v5
sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;
aput-object v1, v0, v6
sput-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/gson/FieldNamingPolicy;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/google/gson/FieldNamingPolicy;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-ge p2, v0, :cond_1c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method private static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v1, v3, :cond_25
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z
move-result v3
if-eqz v3, :cond_1f
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-eqz v3, :cond_1f
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1f
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_25
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v2, 0x0
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-ge v2, v4, :cond_18
invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z
move-result v4
if-eqz v4, :cond_23
:cond_18
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ne v2, v4, :cond_2d
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:goto_22
:cond_22
return-object p0
:cond_23
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
goto :goto_a
:cond_2d
invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z
move-result v4
if-nez v4, :cond_22
invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C
move-result v4
add-int/lit8 v2, v2, 0x1
invoke-static {v4, p0, v2}, Lcom/google/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_22
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
.registers 2
const-class v0, Lcom/google/gson/FieldNamingPolicy;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/gson/FieldNamingPolicy;
return-object v0
.end method
.method public static values()[Lcom/google/gson/FieldNamingPolicy;
.registers 1
sget-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;
invoke-virtual {v0}, [Lcom/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/gson/FieldNamingPolicy;
return-object v0
.end method