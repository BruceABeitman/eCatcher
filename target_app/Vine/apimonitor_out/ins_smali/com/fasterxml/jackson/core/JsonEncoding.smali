.class public final enum Lcom/fasterxml/jackson/core/JsonEncoding;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
.field public static final enum UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
.field protected final _bigEndian:Z
.field protected final _bits:I
.field protected final _javaName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 13
const/4 v12, 0x4
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v1, "UTF8"
const-string v3, "UTF-8"
const/16 v5, 0x8
move v4, v2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v3, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v4, "UTF16_BE"
const-string v6, "UTF-16BE"
const/16 v8, 0x10
move v5, v9
move v7, v9
invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V
sput-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v3, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v4, "UTF16_LE"
const-string v6, "UTF-16LE"
const/16 v8, 0x10
move v5, v10
move v7, v2
invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V
sput-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v3, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v4, "UTF32_BE"
const-string v6, "UTF-32BE"
const/16 v8, 0x20
move v5, v11
move v7, v9
invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V
sput-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
new-instance v3, Lcom/fasterxml/jackson/core/JsonEncoding;
const-string v4, "UTF32_LE"
const-string v6, "UTF-32LE"
const/16 v8, 0x20
move v5, v12
move v7, v2
invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V
sput-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
const/4 v0, 0x5
new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonEncoding;
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v2
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v9
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v10
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v11
sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
aput-object v1, v0, v12
sput-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->$VALUES:[Lcom/fasterxml/jackson/core/JsonEncoding;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_javaName:Ljava/lang/String;
iput-boolean p4, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bigEndian:Z
iput p5, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bits:I
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
.method public bits()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bits:I
return v0
.end method
.method public getJavaName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_javaName:Ljava/lang/String;
return-object v0
.end method
.method public isBigEndian()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonEncoding;->_bigEndian:Z
return v0
.end method