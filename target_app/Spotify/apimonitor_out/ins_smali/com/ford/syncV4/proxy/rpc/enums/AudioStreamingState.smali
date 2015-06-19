.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.field private static final synthetic d:[Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
const-string v1, "AUDIBLE"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->a:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
const-string v1, "ATTENUATED"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->b:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
const-string v1, "NOT_AUDIBLE"
invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->c:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
const/4 v0, 0x3
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->a:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->b:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->c:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
aput-object v1, v0, v4
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->d:[Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.registers 2
invoke-static {p0}, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->d:[Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
return-object v0
.end method