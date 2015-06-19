.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.field private static final synthetic d:[Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.field  internalName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
const-string v1, "SBT_TEXT"
const-string v2, "TEXT"
invoke-direct {v0, v1, v3, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
const-string v1, "SBT_IMAGE"
const-string v2, "IMAGE"
invoke-direct {v0, v1, v4, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->b:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
const-string v1, "SBT_BOTH"
const-string v2, "BOTH"
invoke-direct {v0, v1, v5, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->c:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
const/4 v0, 0x3
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->b:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
aput-object v1, v0, v4
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->c:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
aput-object v1, v0, v5
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->d:[Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->internalName:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->d:[Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->internalName:Ljava/lang/String;
return-object v0
.end method