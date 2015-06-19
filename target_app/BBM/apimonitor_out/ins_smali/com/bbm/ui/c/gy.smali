.class final enum Lcom/bbm/ui/c/gy;
.super Ljava/lang/Enum;
.source "StickerDetailsFragment.java"
.field public static final enum a:Lcom/bbm/ui/c/gy;
.field public static final enum b:Lcom/bbm/ui/c/gy;
.field public static final enum c:Lcom/bbm/ui/c/gy;
.field public static final enum d:Lcom/bbm/ui/c/gy;
.field public static final enum e:Lcom/bbm/ui/c/gy;
.field public static final enum f:Lcom/bbm/ui/c/gy;
.field public static final enum g:Lcom/bbm/ui/c/gy;
.field public static final enum h:Lcom/bbm/ui/c/gy;
.field private static final synthetic i:[Lcom/bbm/ui/c/gy;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->a:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "INSTALL"
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->b:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "INSTALLING"
invoke-direct {v0, v1, v5}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->c:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "INSTALLED"
invoke-direct {v0, v1, v6}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->d:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "UNAVAILABLE"
invoke-direct {v0, v1, v7}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "FREE"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->f:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "PAID_UNPRICED"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->g:Lcom/bbm/ui/c/gy;
new-instance v0, Lcom/bbm/ui/c/gy;
const-string v1, "PAID"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/gy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/gy;->h:Lcom/bbm/ui/c/gy;
const/16 v0, 0x8
new-array v0, v0, [Lcom/bbm/ui/c/gy;
sget-object v1, Lcom/bbm/ui/c/gy;->a:Lcom/bbm/ui/c/gy;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/ui/c/gy;->b:Lcom/bbm/ui/c/gy;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/ui/c/gy;->c:Lcom/bbm/ui/c/gy;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/ui/c/gy;->d:Lcom/bbm/ui/c/gy;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/bbm/ui/c/gy;->f:Lcom/bbm/ui/c/gy;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/ui/c/gy;->g:Lcom/bbm/ui/c/gy;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/bbm/ui/c/gy;->h:Lcom/bbm/ui/c/gy;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/ui/c/gy;->i:[Lcom/bbm/ui/c/gy;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/gy;
.registers 2
const-class v0, Lcom/bbm/ui/c/gy;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/gy;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/c/gy;
.registers 1
sget-object v0, Lcom/bbm/ui/c/gy;->i:[Lcom/bbm/ui/c/gy;
invoke-virtual {v0}, [Lcom/bbm/ui/c/gy;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/c/gy;
return-object v0
.end method