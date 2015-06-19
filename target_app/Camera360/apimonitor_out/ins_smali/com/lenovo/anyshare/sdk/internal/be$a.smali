.class public final enum Lcom/lenovo/anyshare/sdk/internal/be$a;
.super Ljava/lang/Enum;
.source "TaskHelper.java"
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/be$a;
.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/be$a;
.field private static final synthetic c:[Lcom/lenovo/anyshare/sdk/internal/be$a;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/be$a;
const-string/jumbo v1, "SINGLE"
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/be$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->a:Lcom/lenovo/anyshare/sdk/internal/be$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/be$a;
const-string/jumbo v1, "MULTIPLE"
invoke-direct {v0, v1, v3}, Lcom/lenovo/anyshare/sdk/internal/be$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->b:Lcom/lenovo/anyshare/sdk/internal/be$a;
const/4 v0, 0x2
new-array v0, v0, [Lcom/lenovo/anyshare/sdk/internal/be$a;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$a;->a:Lcom/lenovo/anyshare/sdk/internal/be$a;
aput-object v1, v0, v2
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/be$a;->b:Lcom/lenovo/anyshare/sdk/internal/be$a;
aput-object v1, v0, v3
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->c:[Lcom/lenovo/anyshare/sdk/internal/be$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/be$a;
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/be$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/be$a;
return-object v0
.end method
.method public static values()[Lcom/lenovo/anyshare/sdk/internal/be$a;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/be$a;->c:[Lcom/lenovo/anyshare/sdk/internal/be$a;
invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/be$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/be$a;
return-object v0
.end method