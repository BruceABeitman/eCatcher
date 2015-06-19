.class public final enum Lcom/bbm/b/z;
.super Ljava/lang/Enum;
.source "AdsProtocol.java"
.field public static final enum a:Lcom/bbm/b/z;
.field public static final enum b:Lcom/bbm/b/z;
.field public static final enum c:Lcom/bbm/b/z;
.field private static final synthetic e:[Lcom/bbm/b/z;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/b/z;
const-string v1, "Banner"
const-string v2, "Banner"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/b/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/z;->a:Lcom/bbm/b/z;
new-instance v0, Lcom/bbm/b/z;
const-string v1, "Interstitial"
const-string v2, "Interstitial"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/b/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/z;->b:Lcom/bbm/b/z;
new-instance v0, Lcom/bbm/b/z;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/b/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/b/z;->c:Lcom/bbm/b/z;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/b/z;
sget-object v1, Lcom/bbm/b/z;->a:Lcom/bbm/b/z;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/b/z;->b:Lcom/bbm/b/z;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/b/z;->c:Lcom/bbm/b/z;
aput-object v1, v0, v5
sput-object v0, Lcom/bbm/b/z;->e:[Lcom/bbm/b/z;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/b/z;->d:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/z;
.registers 2
const-class v0, Lcom/bbm/b/z;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/b/z;
return-object v0
.end method
.method public static values()[Lcom/bbm/b/z;
.registers 1
sget-object v0, Lcom/bbm/b/z;->e:[Lcom/bbm/b/z;
invoke-virtual {v0}, [Lcom/bbm/b/z;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/b/z;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/b/z;->d:Ljava/lang/String;
return-object v0
.end method