.class public final enum Lcom/fasterxml/jackson/a/g/b;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"
.field public static final enum a:Lcom/fasterxml/jackson/a/g/b;
.field public static final enum b:Lcom/fasterxml/jackson/a/g/b;
.field public static final enum c:Lcom/fasterxml/jackson/a/g/b;
.field public static final enum d:Lcom/fasterxml/jackson/a/g/b;
.field private static final synthetic f:[Lcom/fasterxml/jackson/a/g/b;
.field protected final e:I
.method static constructor <clinit>()V
.registers 8
const/16 v7, 0x7d0
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/a/g/b;
const-string v1, "READ_IO_BUFFER"
const/16 v2, 0xfa0
invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/a/g/b;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/fasterxml/jackson/a/g/b;->a:Lcom/fasterxml/jackson/a/g/b;
new-instance v0, Lcom/fasterxml/jackson/a/g/b;
const-string v1, "WRITE_ENCODING_BUFFER"
const/16 v2, 0xfa0
invoke-direct {v0, v1, v4, v2}, Lcom/fasterxml/jackson/a/g/b;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/fasterxml/jackson/a/g/b;->b:Lcom/fasterxml/jackson/a/g/b;
new-instance v0, Lcom/fasterxml/jackson/a/g/b;
const-string v1, "WRITE_CONCAT_BUFFER"
invoke-direct {v0, v1, v5, v7}, Lcom/fasterxml/jackson/a/g/b;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/fasterxml/jackson/a/g/b;->c:Lcom/fasterxml/jackson/a/g/b;
new-instance v0, Lcom/fasterxml/jackson/a/g/b;
const-string v1, "BASE64_CODEC_BUFFER"
invoke-direct {v0, v1, v6, v7}, Lcom/fasterxml/jackson/a/g/b;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/fasterxml/jackson/a/g/b;->d:Lcom/fasterxml/jackson/a/g/b;
const/4 v0, 0x4
new-array v0, v0, [Lcom/fasterxml/jackson/a/g/b;
sget-object v1, Lcom/fasterxml/jackson/a/g/b;->a:Lcom/fasterxml/jackson/a/g/b;
aput-object v1, v0, v3
sget-object v1, Lcom/fasterxml/jackson/a/g/b;->b:Lcom/fasterxml/jackson/a/g/b;
aput-object v1, v0, v4
sget-object v1, Lcom/fasterxml/jackson/a/g/b;->c:Lcom/fasterxml/jackson/a/g/b;
aput-object v1, v0, v5
sget-object v1, Lcom/fasterxml/jackson/a/g/b;->d:Lcom/fasterxml/jackson/a/g/b;
aput-object v1, v0, v6
sput-object v0, Lcom/fasterxml/jackson/a/g/b;->f:[Lcom/fasterxml/jackson/a/g/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/fasterxml/jackson/a/g/b;->e:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/a/g/b;
.registers 2
const-class v0, Lcom/fasterxml/jackson/a/g/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/a/g/b;
return-object v0
.end method
.method public static values()[Lcom/fasterxml/jackson/a/g/b;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/a/g/b;->f:[Lcom/fasterxml/jackson/a/g/b;
invoke-virtual {v0}, [Lcom/fasterxml/jackson/a/g/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/a/g/b;
return-object v0
.end method