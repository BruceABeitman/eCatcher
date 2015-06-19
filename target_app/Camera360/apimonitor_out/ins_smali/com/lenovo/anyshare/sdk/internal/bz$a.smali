.class public final enum Lcom/lenovo/anyshare/sdk/internal/bz$a;
.super Ljava/lang/Enum;
.source "ModeManager.java"
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field public static final enum c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field public static final enum d:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field private static final synthetic e:[Lcom/lenovo/anyshare/sdk/internal/bz$a;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
const-string/jumbo v1, "DEFAULT"
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bz$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
const-string/jumbo v1, "IDLE"
invoke-direct {v0, v1, v3}, Lcom/lenovo/anyshare/sdk/internal/bz$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
const-string/jumbo v1, "CLIENT"
invoke-direct {v0, v1, v4}, Lcom/lenovo/anyshare/sdk/internal/bz$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
const-string/jumbo v1, "SERVER"
invoke-direct {v0, v1, v5}, Lcom/lenovo/anyshare/sdk/internal/bz$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->d:Lcom/lenovo/anyshare/sdk/internal/bz$a;
const/4 v0, 0x4
new-array v0, v0, [Lcom/lenovo/anyshare/sdk/internal/bz$a;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v1, v0, v2
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v1, v0, v3
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v1, v0, v4
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->d:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v1, v0, v5
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->e:[Lcom/lenovo/anyshare/sdk/internal/bz$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bz$a;
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;
return-object v0
.end method
.method public static values()[Lcom/lenovo/anyshare/sdk/internal/bz$a;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bz$a;->e:[Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/bz$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/bz$a;
return-object v0
.end method