.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.field public static final enum d:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.field public static final enum e:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.field private static final synthetic f:[Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const-string v1, "COUNTUP"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const-string v1, "COUNTDOWN"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->b:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const-string v1, "PAUSE"
invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const-string v1, "RESUME"
invoke-direct {v0, v1, v5}, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->d:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const-string v1, "CLEAR"
invoke-direct {v0, v1, v6}, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->e:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
const/4 v0, 0x5
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->b:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
aput-object v1, v0, v4
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->d:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
aput-object v1, v0, v5
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->e:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
aput-object v1, v0, v6
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->f:[Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->f:[Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
return-object v0
.end method