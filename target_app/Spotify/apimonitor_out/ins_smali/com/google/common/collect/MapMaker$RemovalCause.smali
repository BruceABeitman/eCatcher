.class abstract enum Lcom/google/common/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/google/common/collect/MapMaker$RemovalCause;
.field public static final enum b:Lcom/google/common/collect/MapMaker$RemovalCause;
.field public static final enum c:Lcom/google/common/collect/MapMaker$RemovalCause;
.field public static final enum d:Lcom/google/common/collect/MapMaker$RemovalCause;
.field public static final enum e:Lcom/google/common/collect/MapMaker$RemovalCause;
.field private static final synthetic f:[Lcom/google/common/collect/MapMaker$RemovalCause;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$1;
const-string v1, "EXPLICIT"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$2;
const-string v1, "REPLACED"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->b:Lcom/google/common/collect/MapMaker$RemovalCause;
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$3;
const-string v1, "COLLECTED"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$4;
const-string v1, "EXPIRED"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->d:Lcom/google/common/collect/MapMaker$RemovalCause;
new-instance v0, Lcom/google/common/collect/MapMaker$RemovalCause$5;
const-string v1, "SIZE"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->e:Lcom/google/common/collect/MapMaker$RemovalCause;
const/4 v0, 0x5
new-array v0, v0, [Lcom/google/common/collect/MapMaker$RemovalCause;
const/4 v1, 0x0
sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->b:Lcom/google/common/collect/MapMaker$RemovalCause;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->d:Lcom/google/common/collect/MapMaker$RemovalCause;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->e:Lcom/google/common/collect/MapMaker$RemovalCause;
aput-object v2, v0, v1
sput-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->f:[Lcom/google/common/collect/MapMaker$RemovalCause;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V
return-void
.end method