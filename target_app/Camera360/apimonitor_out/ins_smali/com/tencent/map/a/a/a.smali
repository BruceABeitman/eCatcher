.class public Lcom/tencent/map/a/a/a;
.super Ljava/lang/Object;
.field private static a:Lcom/tencent/map/b/n;
.field private static b:Lcom/tencent/map/a/a/a;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/tencent/map/b/n;->a()Lcom/tencent/map/b/n;
move-result-object v0
sput-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/n;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Lcom/tencent/map/a/a/a;
.registers 2
const-class v1, Lcom/tencent/map/a/a/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;
if-nez v0, :cond_e
new-instance v0, Lcom/tencent/map/a/a/a;
invoke-direct {v0}, Lcom/tencent/map/a/a/a;-><init>()V
sput-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;
:cond_e
sget-object v0, Lcom/tencent/map/a/a/a;->b:Lcom/tencent/map/a/a/a;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
.registers 4
sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/n;
invoke-virtual {v0, p1, p2}, Lcom/tencent/map/b/n;->a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
move-result v0
return v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/n;
invoke-virtual {v0, p1, p2}, Lcom/tencent/map/b/n;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public b()V
.registers 2
sget-object v0, Lcom/tencent/map/a/a/a;->a:Lcom/tencent/map/b/n;
invoke-virtual {v0}, Lcom/tencent/map/b/n;->b()V
return-void
.end method