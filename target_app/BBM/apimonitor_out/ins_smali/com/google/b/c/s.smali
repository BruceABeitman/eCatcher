.class abstract enum Lcom/google/b/c/s;
.super Ljava/lang/Enum;
.source "MapMaker.java"
.field public static final enum a:Lcom/google/b/c/s;
.field public static final enum b:Lcom/google/b/c/s;
.field public static final enum c:Lcom/google/b/c/s;
.field public static final enum d:Lcom/google/b/c/s;
.field public static final enum e:Lcom/google/b/c/s;
.field private static final synthetic f:[Lcom/google/b/c/s;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/b/c/t;
const-string v1, "EXPLICIT"
invoke-direct {v0, v1}, Lcom/google/b/c/t;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/c/s;->a:Lcom/google/b/c/s;
new-instance v0, Lcom/google/b/c/u;
const-string v1, "REPLACED"
invoke-direct {v0, v1}, Lcom/google/b/c/u;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/c/s;->b:Lcom/google/b/c/s;
new-instance v0, Lcom/google/b/c/v;
const-string v1, "COLLECTED"
invoke-direct {v0, v1}, Lcom/google/b/c/v;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/c/s;->c:Lcom/google/b/c/s;
new-instance v0, Lcom/google/b/c/w;
const-string v1, "EXPIRED"
invoke-direct {v0, v1}, Lcom/google/b/c/w;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/c/s;->d:Lcom/google/b/c/s;
new-instance v0, Lcom/google/b/c/x;
const-string v1, "SIZE"
invoke-direct {v0, v1}, Lcom/google/b/c/x;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/c/s;->e:Lcom/google/b/c/s;
const/4 v0, 0x5
new-array v0, v0, [Lcom/google/b/c/s;
const/4 v1, 0x0
sget-object v2, Lcom/google/b/c/s;->a:Lcom/google/b/c/s;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/google/b/c/s;->b:Lcom/google/b/c/s;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/google/b/c/s;->c:Lcom/google/b/c/s;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/google/b/c/s;->d:Lcom/google/b/c/s;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/google/b/c/s;->e:Lcom/google/b/c/s;
aput-object v2, v0, v1
sput-object v0, Lcom/google/b/c/s;->f:[Lcom/google/b/c/s;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/b/c/s;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/b/c/s;
.registers 2
const-class v0, Lcom/google/b/c/s;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/b/c/s;
return-object v0
.end method
.method public static values()[Lcom/google/b/c/s;
.registers 1
sget-object v0, Lcom/google/b/c/s;->f:[Lcom/google/b/c/s;
invoke-virtual {v0}, [Lcom/google/b/c/s;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/b/c/s;
return-object v0
.end method