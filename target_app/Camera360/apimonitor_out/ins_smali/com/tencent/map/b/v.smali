.class public final Lcom/tencent/map/b/v;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static b:Lcom/tencent/map/b/v;
.field private a:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/map/b/v;->a:I
return-void
.end method
.method public static a()Lcom/tencent/map/b/v;
.registers 1
sget-object v0, Lcom/tencent/map/b/v;->b:Lcom/tencent/map/b/v;
if-nez v0, :cond_b
new-instance v0, Lcom/tencent/map/b/v;
invoke-direct {v0}, Lcom/tencent/map/b/v;-><init>()V
sput-object v0, Lcom/tencent/map/b/v;->b:Lcom/tencent/map/b/v;
:cond_b
sget-object v0, Lcom/tencent/map/b/v;->b:Lcom/tencent/map/b/v;
return-object v0
.end method