.class public final enum Lcom/bbm/util/bh;
.super Ljava/lang/Enum;
.source "Existence.java"
.field public static final enum a:Lcom/bbm/util/bh;
.field public static final enum b:Lcom/bbm/util/bh;
.field public static final enum c:Lcom/bbm/util/bh;
.field private static final synthetic d:[Lcom/bbm/util/bh;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/util/bh;
const-string v1, "YES"
invoke-direct {v0, v1, v2}, Lcom/bbm/util/bh;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
new-instance v0, Lcom/bbm/util/bh;
const-string v1, "NO"
invoke-direct {v0, v1, v3}, Lcom/bbm/util/bh;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
new-instance v0, Lcom/bbm/util/bh;
const-string v1, "MAYBE"
invoke-direct {v0, v1, v4}, Lcom/bbm/util/bh;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/util/bh;->d:[Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 2
const-class v0, Lcom/bbm/util/bh;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/util/bh;
return-object v0
.end method
.method public static values()[Lcom/bbm/util/bh;
.registers 1
sget-object v0, Lcom/bbm/util/bh;->d:[Lcom/bbm/util/bh;
invoke-virtual {v0}, [Lcom/bbm/util/bh;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/util/bh;
return-object v0
.end method