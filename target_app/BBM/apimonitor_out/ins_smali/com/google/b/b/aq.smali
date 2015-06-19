.class abstract enum Lcom/google/b/b/aq;
.super Ljava/lang/Enum;
.source "LocalCache.java"
.field public static final enum a:Lcom/google/b/b/aq;
.field public static final enum b:Lcom/google/b/b/aq;
.field public static final enum c:Lcom/google/b/b/aq;
.field private static final synthetic d:[Lcom/google/b/b/aq;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/b/b/ar;
const-string v1, "STRONG"
invoke-direct {v0, v1}, Lcom/google/b/b/ar;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
new-instance v0, Lcom/google/b/b/as;
const-string v1, "SOFT"
invoke-direct {v0, v1}, Lcom/google/b/b/as;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/b/aq;->b:Lcom/google/b/b/aq;
new-instance v0, Lcom/google/b/b/at;
const-string v1, "WEAK"
invoke-direct {v0, v1}, Lcom/google/b/b/at;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/b/b/aq;->c:Lcom/google/b/b/aq;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/b/b/aq;
const/4 v1, 0x0
sget-object v2, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/google/b/b/aq;->b:Lcom/google/b/b/aq;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/google/b/b/aq;->c:Lcom/google/b/b/aq;
aput-object v2, v0, v1
sput-object v0, Lcom/google/b/b/aq;->d:[Lcom/google/b/b/aq;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/b/b/aq;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/b/b/aq;
.registers 2
const-class v0, Lcom/google/b/b/aq;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/b/b/aq;
return-object v0
.end method
.method public static values()[Lcom/google/b/b/aq;
.registers 1
sget-object v0, Lcom/google/b/b/aq;->d:[Lcom/google/b/b/aq;
invoke-virtual {v0}, [Lcom/google/b/b/aq;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/b/b/aq;
return-object v0
.end method
.method abstract a()Lcom/google/b/a/c;
.end method
.method abstract a(Lcom/google/b/b/an;Lcom/google/b/b/am;Ljava/lang/Object;)Lcom/google/b/b/ba;
.end method