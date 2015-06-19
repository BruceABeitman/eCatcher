.class public final enum Lorg/codehaus/jackson/JsonParser$Feature;
.super Ljava/lang/Enum;
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonParser$Feature;
.field public static final enum ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;
.field public static final enum AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;
.field final _defaultState:Z
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;
const-string v1, "AUTO_CLOSE_SOURCE"
invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;
new-instance v0, Lorg/codehaus/jackson/JsonParser$Feature;
const-string v1, "ALLOW_COMMENTS"
invoke-direct {v0, v1, v3, v2}, Lorg/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;
const/4 v0, 0x2
new-array v0, v0, [Lorg/codehaus/jackson/JsonParser$Feature;
sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;
aput-object v1, v0, v2
sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;
aput-object v1, v0, v3
sput-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lorg/codehaus/jackson/JsonParser$Feature;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IZ)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-boolean p3, p0, Lorg/codehaus/jackson/JsonParser$Feature;->_defaultState:Z
return-void
.end method
.method public static collectDefaults()I
.registers 6
const/4 v2, 0x0
invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->values()[Lorg/codehaus/jackson/JsonParser$Feature;
move-result-object v0
array-length v1, v0
move v3, v2
:goto_7
if-ge v2, v1, :cond_19
aget-object v4, v0, v2
invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledByDefault()Z
move-result v5
if-eqz v5, :cond_16
invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I
move-result v4
or-int/2addr v3, v4
:cond_16
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_19
return v3
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser$Feature;
.registers 2
const-class v0, Lorg/codehaus/jackson/JsonParser$Feature;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lorg/codehaus/jackson/JsonParser$Feature;
return-object p0
.end method
.method public static values()[Lorg/codehaus/jackson/JsonParser$Feature;
.registers 1
sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lorg/codehaus/jackson/JsonParser$Feature;
invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonParser$Feature;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/codehaus/jackson/JsonParser$Feature;
return-object v0
.end method
.method public enabledByDefault()Z
.registers 2
iget-boolean v0, p0, Lorg/codehaus/jackson/JsonParser$Feature;->_defaultState:Z
return v0
.end method
.method public getMask()I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser$Feature;->ordinal()I
move-result v1
shl-int/2addr v0, v1
return v0
.end method