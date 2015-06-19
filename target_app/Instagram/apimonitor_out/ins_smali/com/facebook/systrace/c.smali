.class final Lcom/facebook/systrace/c;
.super Ljava/lang/Object;
.source "TraceConfig.java"
.field private static final a:Ljava/lang/Object;
.field private static final b:Ljava/util/List;
.field private static c:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
sput-object v0, Lcom/facebook/systrace/c;->a:Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/facebook/systrace/c;->b:Ljava/util/List;
invoke-static {}, Lcom/facebook/systrace/c;->d()V
return-void
.end method
.method public static a()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_d
sget-wide v0, Lcom/facebook/c/a/a/c;->b:J
invoke-static {v0, v1}, Lcom/facebook/c/a/a/c;->a(J)Z
move-result v0
:goto_c
return v0
:cond_d
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_18
invoke-static {}, Lcom/facebook/systrace/e;->a()Z
move-result v0
goto :goto_c
:cond_18
const/4 v0, 0x0
goto :goto_c
.end method
.method public static b()V
.registers 1
const/4 v0, 0x1
invoke-static {v0}, Lcom/facebook/c/a/a/c;->a(Z)V
return-void
.end method
.method static synthetic c()V
.registers 0
invoke-static {}, Lcom/facebook/systrace/c;->e()V
return-void
.end method
.method private static d()V
.registers 1
invoke-static {}, Lcom/facebook/systrace/c;->a()Z
move-result v0
sput-boolean v0, Lcom/facebook/systrace/c;->c:Z
new-instance v0, Lcom/facebook/systrace/d;
invoke-direct {v0}, Lcom/facebook/systrace/d;-><init>()V
invoke-static {v0}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method private static e()V
.registers 2
invoke-static {}, Lcom/facebook/systrace/c;->a()Z
move-result v0
sget-boolean v1, Lcom/facebook/systrace/c;->c:Z
if-eq v0, v1, :cond_d
sput-boolean v0, Lcom/facebook/systrace/c;->c:Z
invoke-static {}, Lcom/facebook/systrace/c;->f()V
:cond_d
return-void
.end method
.method private static f()V
.registers 3
sget-object v1, Lcom/facebook/systrace/c;->a:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
:goto_4
sget-object v2, Lcom/facebook/systrace/c;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-ge v0, v2, :cond_16
sget-object v2, Lcom/facebook/systrace/c;->b:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
sget-boolean v2, Lcom/facebook/systrace/c;->c:Z
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_16
monitor-exit v1
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_18
return-void
:catchall_18
move-exception v0
monitor-exit v1
throw v0
.end method