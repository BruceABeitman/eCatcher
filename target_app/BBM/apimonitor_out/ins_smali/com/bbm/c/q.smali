.class public final enum Lcom/bbm/c/q;
.super Ljava/lang/Enum;
.source "EventTracker.java"
.field public static final enum a:Lcom/bbm/c/q;
.field public static final enum b:Lcom/bbm/c/q;
.field public static final enum c:Lcom/bbm/c/q;
.field public static final enum d:Lcom/bbm/c/q;
.field private static final synthetic f:[Lcom/bbm/c/q;
.field private e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/c/q;
const-string v1, "FullSticker"
const-string v2, "Full Sticker"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/c/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;
new-instance v0, Lcom/bbm/c/q;
const-string v1, "Store"
const-string v2, "Store"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/c/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/q;->b:Lcom/bbm/c/q;
new-instance v0, Lcom/bbm/c/q;
const-string v1, "PanelTraversal"
const-string v2, "Panel Traversal"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/c/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/q;->c:Lcom/bbm/c/q;
new-instance v0, Lcom/bbm/c/q;
const-string v1, "Link"
const-string v2, "Link"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/c/q;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/q;->d:Lcom/bbm/c/q;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/c/q;
sget-object v1, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/c/q;->b:Lcom/bbm/c/q;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/c/q;->c:Lcom/bbm/c/q;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/c/q;->d:Lcom/bbm/c/q;
aput-object v1, v0, v6
sput-object v0, Lcom/bbm/c/q;->f:[Lcom/bbm/c/q;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/c/q;->e:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/c/q;
.registers 2
const-class v0, Lcom/bbm/c/q;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/c/q;
return-object v0
.end method
.method public static values()[Lcom/bbm/c/q;
.registers 1
sget-object v0, Lcom/bbm/c/q;->f:[Lcom/bbm/c/q;
invoke-virtual {v0}, [Lcom/bbm/c/q;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/c/q;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/c/q;->e:Ljava/lang/String;
return-object v0
.end method