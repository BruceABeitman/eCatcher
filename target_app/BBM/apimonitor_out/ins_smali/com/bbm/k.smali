.class public final enum Lcom/bbm/k;
.super Ljava/lang/Enum;
.source "BuildType.java"
.field public static final enum a:Lcom/bbm/k;
.field public static final enum b:Lcom/bbm/k;
.field public static final enum c:Lcom/bbm/k;
.field public static final enum d:Lcom/bbm/k;
.field private static f:Ljava/util/Hashtable;
.field private static final synthetic g:[Lcom/bbm/k;
.field public final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/k;
const-string v1, "APP_STORE_RELEASE"
const-string v2, "AppStoreRelease"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/k;->a:Lcom/bbm/k;
new-instance v0, Lcom/bbm/k;
const-string v1, "BETA"
const-string v2, "beta"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/k;->b:Lcom/bbm/k;
new-instance v0, Lcom/bbm/k;
const-string v1, "MASTER"
const-string v2, "master"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/k;->c:Lcom/bbm/k;
new-instance v0, Lcom/bbm/k;
const-string v1, "DEBUG"
const-string v2, "debug"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/k;->d:Lcom/bbm/k;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/k;
sget-object v1, Lcom/bbm/k;->a:Lcom/bbm/k;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/k;->b:Lcom/bbm/k;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/k;->c:Lcom/bbm/k;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/k;->d:Lcom/bbm/k;
aput-object v1, v0, v6
sput-object v0, Lcom/bbm/k;->g:[Lcom/bbm/k;
const/4 v0, 0x0
sput-object v0, Lcom/bbm/k;->f:Ljava/util/Hashtable;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/k;->e:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/k;
.registers 2
const-class v0, Lcom/bbm/k;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/k;
return-object v0
.end method
.method public static values()[Lcom/bbm/k;
.registers 1
sget-object v0, Lcom/bbm/k;->g:[Lcom/bbm/k;
invoke-virtual {v0}, [Lcom/bbm/k;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/k;
return-object v0
.end method