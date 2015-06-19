.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.field public static final enum d:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.field public static final enum e:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.field private static final synthetic f:[Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const-string v1, "TEXT"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const-string v1, "SAPI_PHONEMES"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->b:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const-string v1, "LHPLUS_PHONEMES"
invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->c:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const-string v1, "PRE_RECORDED"
invoke-direct {v0, v1, v5}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->d:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const-string v1, "SILENCE"
invoke-direct {v0, v1, v6}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->e:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
const/4 v0, 0x5
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->b:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->c:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
aput-object v1, v0, v4
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->d:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
aput-object v1, v0, v5
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->e:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
aput-object v1, v0, v6
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->f:[Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.registers 2
invoke-static {p0}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->f:[Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
return-object v0
.end method