.class public final enum Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.field public static final enum b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.field public static final enum c:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.field private static final synthetic d:[Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const-string v1, "Transmit"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
new-instance v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const-string v1, "Receive"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
new-instance v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const-string v1, "None"
invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->c:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const/4 v0, 0x3
new-array v0, v0, [Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
sget-object v1, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->c:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
aput-object v1, v0, v4
sput-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->d:[Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.registers 2
const-class v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
.registers 1
sget-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->d:[Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
invoke-virtual {v0}, [Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
return-object v0
.end method