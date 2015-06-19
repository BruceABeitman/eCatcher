.class public final Lcom/facebook/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/HashMap;
.field private final b:Lcom/facebook/LoggingBehavior;
.field private final c:Ljava/lang/String;
.field private d:Ljava/lang/StringBuilder;
.field private e:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/internal/v;->a:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/facebook/internal/v;->e:I
const-string v0, "tag"
invoke-static {p2, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/internal/v;->b:Lcom/facebook/LoggingBehavior;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "FacebookSDK."
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/internal/v;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/internal/v;->d:Ljava/lang/StringBuilder;
return-void
.end method
.method public static a()V
.registers 0
invoke-static {}, Lcom/facebook/ah;->a()Z
return-void
.end method
.method public static declared-synchronized a(Ljava/lang/String;)V
.registers 3
const-class v1, Lcom/facebook/internal/v;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/LoggingBehavior;->b:Lcom/facebook/LoggingBehavior;
invoke-static {}, Lcom/facebook/ah;->a()Z
const-string v0, "ACCESS_TOKEN_REMOVED"
invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_f
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/internal/v;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/internal/v;->a:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static varargs b()V
.registers 0
invoke-static {}, Lcom/facebook/ah;->a()Z
return-void
.end method
.method public static c()V
.registers 0
invoke-static {}, Lcom/facebook/ah;->a()Z
return-void
.end method
.method private e()Z
.registers 2
iget-object v0, p0, Lcom/facebook/internal/v;->b:Lcom/facebook/LoggingBehavior;
invoke-static {}, Lcom/facebook/ah;->a()Z
move-result v0
return v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
const-string v0, "  %s:\t%s\n"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-direct {p0}, Lcom/facebook/internal/v;->e()Z
move-result v2
if-eqz v2, :cond_1a
iget-object v2, p0, Lcom/facebook/internal/v;->d:Ljava/lang/StringBuilder;
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1a
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/internal/v;->e()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/internal/v;->d:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_b
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/facebook/internal/v;->d:Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/facebook/internal/v;->b:Lcom/facebook/LoggingBehavior;
iget v0, p0, Lcom/facebook/internal/v;->e:I
iget-object v0, p0, Lcom/facebook/internal/v;->c:Ljava/lang/String;
invoke-static {}, Lcom/facebook/ah;->a()Z
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/internal/v;->d:Ljava/lang/StringBuilder;
return-void
.end method