.class public final enum Lcom/bbm/l/b/k;
.super Ljava/lang/Enum;
.source "WebStickerPack.java"
.field public static final enum a:Lcom/bbm/l/b/k;
.field public static final enum b:Lcom/bbm/l/b/k;
.field private static final synthetic c:[Lcom/bbm/l/b/k;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/l/b/k;
const-string v1, "Hero"
invoke-direct {v0, v1, v2}, Lcom/bbm/l/b/k;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/l/b/k;->a:Lcom/bbm/l/b/k;
new-instance v0, Lcom/bbm/l/b/k;
const-string v1, "Wingman"
invoke-direct {v0, v1, v3}, Lcom/bbm/l/b/k;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/l/b/k;->b:Lcom/bbm/l/b/k;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/l/b/k;
sget-object v1, Lcom/bbm/l/b/k;->a:Lcom/bbm/l/b/k;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/l/b/k;->b:Lcom/bbm/l/b/k;
aput-object v1, v0, v3
sput-object v0, Lcom/bbm/l/b/k;->c:[Lcom/bbm/l/b/k;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/l/b/k;
.registers 2
const-class v0, Lcom/bbm/l/b/k;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/k;
return-object v0
.end method
.method public static values()[Lcom/bbm/l/b/k;
.registers 1
sget-object v0, Lcom/bbm/l/b/k;->c:[Lcom/bbm/l/b/k;
invoke-virtual {v0}, [Lcom/bbm/l/b/k;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/l/b/k;
return-object v0
.end method