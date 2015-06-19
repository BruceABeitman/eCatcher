.class public final enum Lcom/bbm/b/p;
.super Ljava/lang/Enum;
.source "AdUtils.java"
.field public static final enum a:Lcom/bbm/b/p;
.field public static final enum b:Lcom/bbm/b/p;
.field public static final enum c:Lcom/bbm/b/p;
.field public static final enum d:Lcom/bbm/b/p;
.field public static final enum e:Lcom/bbm/b/p;
.field public static final enum f:Lcom/bbm/b/p;
.field private static final synthetic g:[Lcom/bbm/b/p;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/b/p;
const-string v1, "SponsoredInvite"
invoke-direct {v0, v1, v3}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->a:Lcom/bbm/b/p;
new-instance v0, Lcom/bbm/b/p;
const-string v1, "DisplayInvite"
invoke-direct {v0, v1, v4}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->b:Lcom/bbm/b/p;
new-instance v0, Lcom/bbm/b/p;
const-string v1, "SponsoredPost"
invoke-direct {v0, v1, v5}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->c:Lcom/bbm/b/p;
new-instance v0, Lcom/bbm/b/p;
const-string v1, "DisplayPost"
invoke-direct {v0, v1, v6}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->d:Lcom/bbm/b/p;
new-instance v0, Lcom/bbm/b/p;
const-string v1, "DisplayNoInterstitialAd"
invoke-direct {v0, v1, v7}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->e:Lcom/bbm/b/p;
new-instance v0, Lcom/bbm/b/p;
const-string v1, "Unspecified"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/bbm/b/p;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/b/p;->f:Lcom/bbm/b/p;
const/4 v0, 0x6
new-array v0, v0, [Lcom/bbm/b/p;
sget-object v1, Lcom/bbm/b/p;->a:Lcom/bbm/b/p;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/b/p;->b:Lcom/bbm/b/p;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/b/p;->c:Lcom/bbm/b/p;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/b/p;->d:Lcom/bbm/b/p;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/b/p;->e:Lcom/bbm/b/p;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/bbm/b/p;->f:Lcom/bbm/b/p;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/b/p;->g:[Lcom/bbm/b/p;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/b/p;
.registers 2
const-class v0, Lcom/bbm/b/p;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/b/p;
return-object v0
.end method
.method public static values()[Lcom/bbm/b/p;
.registers 1
sget-object v0, Lcom/bbm/b/p;->g:[Lcom/bbm/b/p;
invoke-virtual {v0}, [Lcom/bbm/b/p;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/b/p;
return-object v0
.end method