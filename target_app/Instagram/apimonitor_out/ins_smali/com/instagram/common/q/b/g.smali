.class public final enum Lcom/instagram/common/q/b/g;
.super Ljava/lang/Enum;
.source "PushDeviceType.java"
.field public static final enum a:Lcom/instagram/common/q/b/g;
.field public static final enum b:Lcom/instagram/common/q/b/g;
.field public static final enum c:Lcom/instagram/common/q/b/g;
.field private static final synthetic e:[Lcom/instagram/common/q/b/g;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/instagram/common/q/b/g;
const-string v1, "AMAZON"
const-string v2, "android_adm"
invoke-direct {v0, v1, v3, v2}, Lcom/instagram/common/q/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/common/q/b/g;->a:Lcom/instagram/common/q/b/g;
new-instance v0, Lcom/instagram/common/q/b/g;
const-string v1, "GCM"
const-string v2, "android_gcm"
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/common/q/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/common/q/b/g;->b:Lcom/instagram/common/q/b/g;
new-instance v0, Lcom/instagram/common/q/b/g;
const-string v1, "NOKIA"
const-string v2, "android_nokia"
invoke-direct {v0, v1, v5, v2}, Lcom/instagram/common/q/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/common/q/b/g;->c:Lcom/instagram/common/q/b/g;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/common/q/b/g;
sget-object v1, Lcom/instagram/common/q/b/g;->a:Lcom/instagram/common/q/b/g;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/common/q/b/g;->b:Lcom/instagram/common/q/b/g;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/common/q/b/g;->c:Lcom/instagram/common/q/b/g;
aput-object v1, v0, v5
sput-object v0, Lcom/instagram/common/q/b/g;->e:[Lcom/instagram/common/q/b/g;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/common/q/b/g;->d:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/q/b/g;
.registers 2
const-class v0, Lcom/instagram/common/q/b/g;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/common/q/b/g;
return-object v0
.end method
.method public static values()[Lcom/instagram/common/q/b/g;
.registers 1
sget-object v0, Lcom/instagram/common/q/b/g;->e:[Lcom/instagram/common/q/b/g;
invoke-virtual {v0}, [Lcom/instagram/common/q/b/g;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/common/q/b/g;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/q/b/g;->d:Ljava/lang/String;
return-object v0
.end method