.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.field private static final synthetic c:[Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
const-string v1, "FRONT"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
const-string v1, "BACK"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->b:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
const/4 v0, 0x2
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->b:Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
aput-object v1, v0, v3
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->c:[Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.registers 2
invoke-static {p0}, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->c:[Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
return-object v0
.end method