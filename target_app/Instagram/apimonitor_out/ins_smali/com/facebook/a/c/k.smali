.class public final Lcom/facebook/a/c/k;
.super Ljava/lang/Object;
.source "SimpleTraceLogger.java"
.field public static a:I
.field protected final b:I
.field private c:Ljava/util/Queue;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/facebook/a/c/k;->a:I
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/a/c/k;->b:I
invoke-direct {p0}, Lcom/facebook/a/c/k;->a()V
return-void
.end method
.method private declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/facebook/a/c/k;->c:Ljava/util/Queue;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_a
monitor-exit p0
return-void
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(I)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
monitor-enter p0
:try_start_2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget v1, Lcom/facebook/a/c/k;->a:I
if-gt p1, v1, :cond_32
move v2, v0
:goto_c
iget-object v1, p0, Lcom/facebook/a/c/k;->c:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_13
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/c/l;
if-lt v1, v2, :cond_2e
invoke-virtual {v0}, Lcom/facebook/a/c/l;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v5, 0xa
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_2e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_32
iget-object v1, p0, Lcom/facebook/a/c/k;->c:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->size()I
move-result v1
sub-int/2addr v1, p1
const/4 v2, 0x0
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
move v2, v1
goto :goto_c
:cond_40
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_43
.catchall {:try_start_2 .. :try_end_43} :catchall_46
move-result-object v0
monitor-exit p0
return-object v0
:catchall_46
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized toString()Ljava/lang/String;
.registers 2
monitor-enter p0
:try_start_1
sget v0, Lcom/facebook/a/c/k;->a:I
invoke-virtual {p0, v0}, Lcom/facebook/a/c/k;->a(I)Ljava/lang/String;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method