.class public final Lcom/google/b/a/q;
.super Ljava/lang/Object;
.source "Stopwatch.java"
.field public final a:Lcom/google/b/a/v;
.field public b:Z
.field public c:J
.field private d:J
.method public constructor <init>()V
.registers 2
invoke-static {}, Lcom/google/b/a/v;->b()Lcom/google/b/a/v;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/b/a/q;-><init>(Lcom/google/b/a/v;)V
return-void
.end method
.method private constructor <init>(Lcom/google/b/a/v;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "ticker"
invoke-static {p1, v0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/v;
iput-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/v;
return-void
.end method
.method public final a()J
.registers 5
iget-boolean v0, p0, Lcom/google/b/a/q;->b:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/google/b/a/q;->a:Lcom/google/b/a/v;
invoke-virtual {v0}, Lcom/google/b/a/v;->a()J
move-result-wide v0
iget-wide v2, p0, Lcom/google/b/a/q;->c:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/google/b/a/q;->d:J
add-long/2addr v0, v2
:goto_10
return-wide v0
:cond_11
iget-wide v0, p0, Lcom/google/b/a/q;->d:J
goto :goto_10
.end method
.method public final toString()Ljava/lang/String;
.registers 8
const-wide/16 v5, 0x0
invoke-virtual {p0}, Lcom/google/b/a/q;->a()J
move-result-wide v1
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v3
cmp-long v0, v3, v5
if-lez v0, :cond_3d
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
:goto_14
long-to-double v1, v1
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
const-wide/16 v4, 0x1
invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v3
long-to-double v3, v3
div-double/2addr v1, v3
const-string v3, "%.4g %s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
aput-object v1, v4, v5
const/4 v1, 0x1
sget-object v2, Lcom/google/b/a/r;->a:[I
invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->ordinal()I
move-result v0
aget v0, v2, v0
packed-switch v0, :pswitch_data_70
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_3d
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v3
cmp-long v0, v3, v5
if-lez v0, :cond_4c
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
goto :goto_14
:cond_4c
sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
move-result-wide v3
cmp-long v0, v3, v5
if-lez v0, :cond_5b
sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;
goto :goto_14
:cond_5b
sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
goto :goto_14
:pswitch_5e
const-string v0, "ns"
:goto_60
aput-object v0, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_67
const-string v0, "\u03bcs"
goto :goto_60
:pswitch_6a
const-string v0, "ms"
goto :goto_60
:pswitch_6d
const-string v0, "s"
goto :goto_60
:pswitch_data_70
.packed-switch 0x1
:pswitch_5e
:pswitch_67
:pswitch_6a
:pswitch_6d
.end packed-switch
.end method