.class public final enum Lcom/fasterxml/jackson/core/JsonEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
.field protected final _bigEndian:Z
.field protected final _javaName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF8"
const-string v2, "UTF-8"
invoke-direct {v0, v1, v3, v2, v3}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF16_BE"
const-string v2, "UTF-16BE"
invoke-direct {v0, v1, v4, v2, v4}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF16_LE"
const-string v2, "UTF-16LE"
invoke-direct {v0, v1, v5, v2, v3}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF32_BE"
const-string v2, "UTF-32BE"
invoke-direct {v0, v1, v6, v2, v4}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF32_LE"
const-string v2, "UTF-32LE"
invoke-direct {v0, v1, v7, v2, v3}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
const/4 v0, 0x5
new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonEncoding;
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v6
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v7
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->$VALUES:[Lcom/fasterxml/jackson/core/JsonEncoding;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_javaName:Ljava/lang/String;
iput-boolean p4, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bigEndian:Z
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonEncoding;
.registers 2
const-class v0, Lcom/fasterxml/jackson/core/JsonEncoding;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/JsonEncoding;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/core/JsonEncoding;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->$VALUES:[Lcom/fasterxml/jackson/core/JsonEncoding;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonEncoding;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/core/JsonEncoding;
return-object v0
.end method
.method public final getJavaName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_javaName:Ljava/lang/String;
return-object v0
.end method
.method public final isBigEndian()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bigEndian:Z
return v0
.end method