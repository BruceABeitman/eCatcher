.class public final enum Lcom/flurry/sdk/ek$a;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/flurry/sdk/ek$a;
.field public static final enum b:Lcom/flurry/sdk/ek$a;
.field public static final enum c:Lcom/flurry/sdk/ek$a;
.field public static final enum d:Lcom/flurry/sdk/ek$a;
.field public static final enum e:Lcom/flurry/sdk/ek$a;
.field public static final enum f:Lcom/flurry/sdk/ek$a;
.field private static final synthetic g:[Lcom/flurry/sdk/ek$a;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kUnknown"
invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kGet"
invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kPost"
invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kPut"
invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->d:Lcom/flurry/sdk/ek$a;
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kDelete"
invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->e:Lcom/flurry/sdk/ek$a;
new-instance v0, Lcom/flurry/sdk/ek$a;
const-string v1, "kHead"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;
const/4 v0, 0x6
new-array v0, v0, [Lcom/flurry/sdk/ek$a;
sget-object v1, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;
aput-object v1, v0, v3
sget-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
aput-object v1, v0, v4
sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
aput-object v1, v0, v5
sget-object v1, Lcom/flurry/sdk/ek$a;->d:Lcom/flurry/sdk/ek$a;
aput-object v1, v0, v6
sget-object v1, Lcom/flurry/sdk/ek$a;->e:Lcom/flurry/sdk/ek$a;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;
aput-object v2, v0, v1
sput-object v0, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ek$a;
.registers 2
const-class v0, Lcom/flurry/sdk/ek$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/ek$a;
return-object v0
.end method
.method public static values()[Lcom/flurry/sdk/ek$a;
.registers 1
sget-object v0, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;
invoke-virtual {v0}, [Lcom/flurry/sdk/ek$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/flurry/sdk/ek$a;
return-object v0
.end method
.method public a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
.registers 4
sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I
invoke-virtual {p0}, Lcom/flurry/sdk/ek$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2c
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
new-instance v0, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
goto :goto_c
:pswitch_13
new-instance v0, Lorg/apache/http/client/methods/HttpPut;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V
goto :goto_c
:pswitch_19
new-instance v0, Lorg/apache/http/client/methods/HttpDelete;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
goto :goto_c
:pswitch_1f
new-instance v0, Lorg/apache/http/client/methods/HttpHead;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
goto :goto_c
:pswitch_25
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
goto :goto_c
nop
:pswitch_data_2c
.packed-switch 0x1
:pswitch_d
:pswitch_13
:pswitch_19
:pswitch_1f
:pswitch_25
.end packed-switch
.end method
.method public toString()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I
invoke-virtual {p0}, Lcom/flurry/sdk/ek$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
const/4 v0, 0x0
:goto_c
return-object v0
:pswitch_d
const-string v0, "POST"
goto :goto_c
:pswitch_10
const-string v0, "PUT"
goto :goto_c
:pswitch_13
const-string v0, "DELETE"
goto :goto_c
:pswitch_16
const-string v0, "HEAD"
goto :goto_c
:pswitch_19
const-string v0, "GET"
goto :goto_c
:pswitch_data_1c
.packed-switch 0x1
:pswitch_d
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
.end packed-switch
.end method