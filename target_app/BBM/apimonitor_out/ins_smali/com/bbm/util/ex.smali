.class public final enum Lcom/bbm/util/ex;
.super Ljava/lang/Enum;
.source "UpdatesFragmentUtil.java"
.field public static final enum a:Lcom/bbm/util/ex;
.field public static final enum b:Lcom/bbm/util/ex;
.field public static final enum c:Lcom/bbm/util/ex;
.field public static final enum d:Lcom/bbm/util/ex;
.field public static final enum e:Lcom/bbm/util/ex;
.field public static final enum f:Lcom/bbm/util/ex;
.field private static final synthetic g:[Lcom/bbm/util/ex;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "CONTACT"
invoke-direct {v0, v1, v3}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "GROUP"
invoke-direct {v0, v1, v4}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "CHANNEL"
invoke-direct {v0, v1, v5}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "SPONSOREDPOST"
invoke-direct {v0, v1, v6}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "CHANNELPROMOTION"
invoke-direct {v0, v1, v7}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;
new-instance v0, Lcom/bbm/util/ex;
const-string v1, "CHANNELPROMOTIONALL"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/bbm/util/ex;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/ex;->f:Lcom/bbm/util/ex;
const/4 v0, 0x6
new-array v0, v0, [Lcom/bbm/util/ex;
sget-object v1, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/bbm/util/ex;->f:Lcom/bbm/util/ex;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/util/ex;->g:[Lcom/bbm/util/ex;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/ex;
.registers 2
const-class v0, Lcom/bbm/util/ex;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/util/ex;
return-object v0
.end method
.method public static values()[Lcom/bbm/util/ex;
.registers 1
sget-object v0, Lcom/bbm/util/ex;->g:[Lcom/bbm/util/ex;
invoke-virtual {v0}, [Lcom/bbm/util/ex;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/util/ex;
return-object v0
.end method