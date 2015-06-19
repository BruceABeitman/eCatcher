.class public Lcom/facebook/e/c/g;
.super Ljava/lang/Object;
.source "TraceEvent.java"
.field private static final i:Lcom/facebook/d/e/a;
.field private a:I
.field private b:I
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:J
.field private f:J
.field private g:J
.field private h:J
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/facebook/d/e/d;
const-class v1, Lcom/facebook/e/c/g;
invoke-static {}, Lcom/facebook/d/f/b;->a()Lcom/facebook/d/f/b;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/facebook/d/e/d;-><init>(Ljava/lang/Class;Lcom/facebook/d/f/a;)V
new-instance v1, Lcom/facebook/e/c/h;
const-class v2, Lcom/facebook/e/c/g;
invoke-direct {v1, v2}, Lcom/facebook/e/c/h;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/facebook/d/e/d;->a(Lcom/facebook/d/e/b;)Lcom/facebook/d/e/d;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/e/d;->a()Lcom/facebook/d/e/a;
move-result-object v0
sput-object v0, Lcom/facebook/e/c/g;->i:Lcom/facebook/d/e/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/facebook/e/c/g;-><init>()V
return-void
.end method
.method private static a(IILjava/lang/String;Ljava/lang/String;JJ)Lcom/facebook/e/c/g;
.registers 11
sget-object v0, Lcom/facebook/e/c/g;->i:Lcom/facebook/d/e/a;
invoke-virtual {v0}, Lcom/facebook/d/e/a;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/e/c/g;
iput p0, v0, Lcom/facebook/e/c/g;->a:I
iput p1, v0, Lcom/facebook/e/c/g;->b:I
iput-object p2, v0, Lcom/facebook/e/c/g;->c:Ljava/lang/String;
iput-object p3, v0, Lcom/facebook/e/c/g;->d:Ljava/lang/String;
invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J
move-result-wide v1
iput-wide v1, v0, Lcom/facebook/e/c/g;->g:J
invoke-static {}, Lcom/facebook/e/c/n;->a()J
move-result-wide v1
iput-wide v1, v0, Lcom/facebook/e/c/g;->e:J
iput-wide p4, v0, Lcom/facebook/e/c/g;->f:J
iput-wide p6, v0, Lcom/facebook/e/c/g;->h:J
return-object v0
.end method
.method static a(ILjava/lang/String;)Lcom/facebook/e/c/g;
.registers 10
const-wide/16 v4, -0x1
sget v0, Lcom/facebook/e/c/i;->e:I
const/4 v3, 0x0
move v1, p0
move-object v2, p1
move-wide v6, v4
invoke-static/range {v0 .. v7}, Lcom/facebook/e/c/g;->a(IILjava/lang/String;Ljava/lang/String;JJ)Lcom/facebook/e/c/g;
move-result-object v0
return-object v0
.end method
.method static a(ILjava/lang/String;Ljava/lang/String;Z)Lcom/facebook/e/c/g;
.registers 12
const-wide/16 v4, -0x1
if-eqz p3, :cond_f
sget v0, Lcom/facebook/e/c/i;->c:I
:goto_6
move v1, p0
move-object v2, p1
move-object v3, p2
move-wide v6, v4
invoke-static/range {v0 .. v7}, Lcom/facebook/e/c/g;->a(IILjava/lang/String;Ljava/lang/String;JJ)Lcom/facebook/e/c/g;
move-result-object v0
return-object v0
:cond_f
sget v0, Lcom/facebook/e/c/i;->a:I
goto :goto_6
.end method
.method static a(Lcom/facebook/e/c/g;)Lcom/facebook/e/c/g;
.registers 9
invoke-virtual {p0}, Lcom/facebook/e/c/g;->c()I
move-result v0
sget v1, Lcom/facebook/e/c/i;->a:I
if-ne v0, v1, :cond_23
sget v0, Lcom/facebook/e/c/i;->b:I
:goto_a
invoke-virtual {p0}, Lcom/facebook/e/c/g;->b()I
move-result v1
invoke-virtual {p0}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;
move-result-object v2
invoke-direct {p0}, Lcom/facebook/e/c/g;->g()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/facebook/e/c/g;->f()J
move-result-wide v4
invoke-direct {p0}, Lcom/facebook/e/c/g;->h()J
move-result-wide v6
invoke-static/range {v0 .. v7}, Lcom/facebook/e/c/g;->a(IILjava/lang/String;Ljava/lang/String;JJ)Lcom/facebook/e/c/g;
move-result-object v0
return-object v0
:cond_23
sget v0, Lcom/facebook/e/c/i;->d:I
goto :goto_a
.end method
.method static a(J)Ljava/lang/String;
.registers 14
const-wide/16 v10, 0x0
const/4 v9, 0x1
const-wide/16 v7, 0x3e8
long-to-float v0, p0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-long v0, v0
div-long v2, v0, v7
const-wide/16 v4, 0x3c
rem-long/2addr v2, v4
invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v2
rem-long/2addr v0, v7
invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-wide/16 v5, 0x64
add-long/2addr v2, v5
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x3
invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x2e
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
add-long/2addr v0, v7
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(J)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0xa
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
long-to-float v1, p0
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
int-to-long v1, v1
const-wide/16 v3, 0xa
cmp-long v3, v1, v3
if-gez v3, :cond_20
const-string v3, "____"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_18
:cond_18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_20
const-wide/16 v3, 0x64
cmp-long v3, v1, v3
if-gez v3, :cond_2c
const-string v3, "___"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
:cond_2c
const-wide/16 v3, 0x3e8
cmp-long v3, v1, v3
if-gez v3, :cond_38
const-string v3, "__"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
:cond_38
const-wide/16 v3, 0x2710
cmp-long v3, v1, v3
if-gez v3, :cond_18
const-string v3, "_"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
.end method
.method static synthetic b(Lcom/facebook/e/c/g;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/e/c/g;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/e/c/g;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/e/c/g;->d:Ljava/lang/String;
return-object v0
.end method
.method private g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/e/c/g;->d:Ljava/lang/String;
return-object v0
.end method
.method private h()J
.registers 3
iget-wide v0, p0, Lcom/facebook/e/c/g;->g:J
return-wide v0
.end method
.method final a(JJLjava/lang/String;)Ljava/lang/String;
.registers 15
const-wide/32 v7, 0xf4240
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-wide/16 v1, -0x1
cmp-long v1, p3, v1
if-nez v1, :cond_3d
const-string v1, "-----"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_13
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-wide v1, p0, Lcom/facebook/e/c/g;->e:J
sub-long/2addr v1, p1
div-long/2addr v1, v7
invoke-static {v1, v2}, Lcom/facebook/e/c/g;->a(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Lcom/facebook/e/c/g;->a:I
sget v2, Lcom/facebook/e/c/i;->a:I
if-ne v1, v2, :cond_49
const-string v1, " Start    ...     ...   "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_2e
:cond_2e
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/facebook/e/c/g;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_3d
iget-wide v1, p0, Lcom/facebook/e/c/g;->e:J
sub-long/2addr v1, p3
div-long/2addr v1, v7
invoke-static {v1, v2}, Lcom/facebook/e/c/g;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_49
iget v1, p0, Lcom/facebook/e/c/g;->a:I
sget v2, Lcom/facebook/e/c/i;->c:I
if-ne v1, v2, :cond_55
const-string v1, " AStart   ...     ...   "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2e
:cond_55
iget v1, p0, Lcom/facebook/e/c/g;->a:I
sget v2, Lcom/facebook/e/c/i;->b:I
if-eq v1, v2, :cond_61
iget v1, p0, Lcom/facebook/e/c/g;->a:I
sget v2, Lcom/facebook/e/c/i;->d:I
if-ne v1, v2, :cond_8a
:cond_61
const-string v1, " Done "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-wide v1, p0, Lcom/facebook/e/c/g;->e:J
iget-wide v3, p0, Lcom/facebook/e/c/g;->f:J
sub-long/2addr v1, v3
iget-wide v3, p0, Lcom/facebook/e/c/g;->g:J
iget-wide v5, p0, Lcom/facebook/e/c/g;->h:J
sub-long/2addr v3, v5
div-long/2addr v1, v7
invoke-static {v1, v2}, Lcom/facebook/e/c/g;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " ms "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v3, v4}, Lcom/facebook/e/c/g;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " ms "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2e
:cond_8a
iget v1, p0, Lcom/facebook/e/c/g;->a:I
sget v2, Lcom/facebook/e/c/i;->f:I
if-eq v1, v2, :cond_2e
const-string v1, " Comment  ...     ...   "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2e
.end method
.method final a()V
.registers 2
sget-object v0, Lcom/facebook/e/c/g;->i:Lcom/facebook/d/e/a;
invoke-virtual {v0, p0}, Lcom/facebook/d/e/a;->a(Ljava/lang/Object;)V
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/facebook/e/c/g;->b:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/facebook/e/c/g;->a:I
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/e/c/g;->c:Ljava/lang/String;
return-object v0
.end method
.method public final e()J
.registers 3
iget-wide v0, p0, Lcom/facebook/e/c/g;->f:J
return-wide v0
.end method
.method public final f()J
.registers 3
iget-wide v0, p0, Lcom/facebook/e/c/g;->e:J
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/e/c/g;->d:Ljava/lang/String;
if-nez v0, :cond_7
iget-object v0, p0, Lcom/facebook/e/c/g;->c:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "["
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/e/c/g;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "] "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/e/c/g;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method