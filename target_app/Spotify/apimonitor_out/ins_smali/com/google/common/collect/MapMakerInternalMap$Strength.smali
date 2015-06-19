.class abstract enum Lcom/google/common/collect/MapMakerInternalMap$Strength;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/google/common/collect/MapMakerInternalMap$Strength;
.field public static final enum b:Lcom/google/common/collect/MapMakerInternalMap$Strength;
.field public static final enum c:Lcom/google/common/collect/MapMakerInternalMap$Strength;
.field private static final synthetic d:[Lcom/google/common/collect/MapMakerInternalMap$Strength;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
const-string v1, "STRONG"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength$1;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;
new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Strength$2;
const-string v1, "SOFT"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength$2;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength;
new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Strength$3;
const-string v1, "WEAK"
invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength$3;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->c:Lcom/google/common/collect/MapMakerInternalMap$Strength;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$Strength;
const/4 v1, 0x0
sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$Strength;->b:Lcom/google/common/collect/MapMakerInternalMap$Strength;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$Strength;->c:Lcom/google/common/collect/MapMakerInternalMap$Strength;
aput-object v2, v0, v1
sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->d:[Lcom/google/common/collect/MapMakerInternalMap$Strength;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method abstract a()Lcom/google/common/base/Equivalence;
.end method
.method abstract a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Ljava/lang/Object;)Lcom/google/common/collect/ac;
.end method