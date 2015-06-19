.class final Lokio/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lokio/e;
.field  b:J
.field private c:Lokio/d;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lokio/e;
invoke-direct {v0}, Lokio/e;-><init>()V
sput-object v0, Lokio/e;->a:Lokio/e;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a()Lokio/d;
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lokio/e;->c:Lokio/d;
if-eqz v0, :cond_17
iget-object v0, p0, Lokio/e;->c:Lokio/d;
iget-object v1, v0, Lokio/d;->d:Lokio/d;
iput-object v1, p0, Lokio/e;->c:Lokio/d;
const/4 v1, 0x0
iput-object v1, v0, Lokio/d;->d:Lokio/d;
iget-wide v1, p0, Lokio/e;->b:J
const-wide/16 v3, 0x800
sub-long/2addr v1, v3
iput-wide v1, p0, Lokio/e;->b:J
monitor-exit p0
:goto_16
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_1e
return-object v0
:cond_17
monitor-exit p0
new-instance v0, Lokio/d;
invoke-direct {v0}, Lokio/d;-><init>()V
goto :goto_16
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method final a(Lokio/d;)V
.registers 8
const-wide/16 v4, 0x800
iget-object v0, p1, Lokio/d;->d:Lokio/d;
if-nez v0, :cond_a
iget-object v0, p1, Lokio/d;->e:Lokio/d;
if-eqz v0, :cond_10
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_10
monitor-enter p0
:try_start_11
iget-wide v0, p0, Lokio/e;->b:J
add-long/2addr v0, v4
const-wide/32 v2, 0x10000
cmp-long v0, v0, v2
if-lez v0, :cond_1d
monitor-exit p0
:goto_1c
return-void
:cond_1d
iget-wide v0, p0, Lokio/e;->b:J
add-long/2addr v0, v4
iput-wide v0, p0, Lokio/e;->b:J
iget-object v0, p0, Lokio/e;->c:Lokio/d;
iput-object v0, p1, Lokio/d;->d:Lokio/d;
const/4 v0, 0x0
iput v0, p1, Lokio/d;->c:I
iput v0, p1, Lokio/d;->b:I
iput-object p1, p0, Lokio/e;->c:Lokio/d;
monitor-exit p0
:try_end_2e
.catchall {:try_start_11 .. :try_end_2e} :catchall_2f
goto :goto_1c
:catchall_2f
move-exception v0
monitor-exit p0
throw v0
.end method