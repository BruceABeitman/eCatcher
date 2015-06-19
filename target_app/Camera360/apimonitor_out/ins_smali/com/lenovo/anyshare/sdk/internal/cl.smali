.class public final enum Lcom/lenovo/anyshare/sdk/internal/cl;
.super Ljava/lang/Enum;
.source "WorkMode.java"
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/cl;
.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/cl;
.field public static final enum c:Lcom/lenovo/anyshare/sdk/internal/cl;
.field private static final synthetic e:[Lcom/lenovo/anyshare/sdk/internal/cl;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cl;
const-string/jumbo v1, "GROUP"
const-string/jumbo v2, "A"
invoke-direct {v0, v1, v3, v2}, Lcom/lenovo/anyshare/sdk/internal/cl;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cl;
const-string/jumbo v1, "P2P"
const-string/jumbo v2, "B"
invoke-direct {v0, v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/cl;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cl;
const-string/jumbo v1, "CLONE"
const-string/jumbo v2, "C"
invoke-direct {v0, v1, v5, v2}, Lcom/lenovo/anyshare/sdk/internal/cl;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->c:Lcom/lenovo/anyshare/sdk/internal/cl;
const/4 v0, 0x3
new-array v0, v0, [Lcom/lenovo/anyshare/sdk/internal/cl;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;
aput-object v1, v0, v3
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;
aput-object v1, v0, v4
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cl;->c:Lcom/lenovo/anyshare/sdk/internal/cl;
aput-object v1, v0, v5
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->e:[Lcom/lenovo/anyshare/sdk/internal/cl;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/cl;->d:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cl;
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->a:Lcom/lenovo/anyshare/sdk/internal/cl;
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->b:Lcom/lenovo/anyshare/sdk/internal/cl;
goto :goto_e
:cond_1e
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->c:Lcom/lenovo/anyshare/sdk/internal/cl;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cl;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->c:Lcom/lenovo/anyshare/sdk/internal/cl;
goto :goto_e
:cond_2d
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cl;
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/cl;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/cl;
return-object v0
.end method
.method public static values()[Lcom/lenovo/anyshare/sdk/internal/cl;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cl;->e:[Lcom/lenovo/anyshare/sdk/internal/cl;
invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/cl;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/cl;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cl;->d:Ljava/lang/String;
return-object v0
.end method