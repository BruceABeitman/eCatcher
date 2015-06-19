.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field public static final enum d:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field public static final enum e:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field private static final synthetic f:[Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.field  internalName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const-string v1, "SYSCTXT_MAIN"
const-string v2, "MAIN"
invoke-direct {v0, v1, v3, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->a:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const-string v1, "SYSCTXT_VRSESSION"
const-string v2, "VRSESSION"
invoke-direct {v0, v1, v4, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->b:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const-string v1, "SYSCTXT_MENU"
const-string v2, "MENU"
invoke-direct {v0, v1, v5, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->c:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const-string v1, "SYSCTXT_HMI_OBSCURED"
const-string v2, "HMI_OBSCURED"
invoke-direct {v0, v1, v6, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->d:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const-string v1, "SYSCTXT_ALERT"
const-string v2, "ALERT"
invoke-direct {v0, v1, v7, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->e:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
const/4 v0, 0x5
new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->a:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->b:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
aput-object v1, v0, v4
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->c:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
aput-object v1, v0, v5
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->d:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
aput-object v1, v0, v6
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->e:Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
aput-object v1, v0, v7
sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->f:[Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->internalName:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.registers 4
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
invoke-virtual {v0}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a
:goto_20
return-object v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.registers 2
const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
.registers 1
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->f:[Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->internalName:Ljava/lang/String;
return-object v0
.end method