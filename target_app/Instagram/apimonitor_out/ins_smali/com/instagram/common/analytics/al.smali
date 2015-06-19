.class public final Lcom/instagram/common/analytics/al;
.super Ljava/lang/Object;
.source "TimeSpentBitArray.java"
.field private static final a:Ljava/util/Random;
.field private b:J
.field private c:J
.field private d:Ljava/lang/String;
.field private e:[I
.field private f:I
.field private g:I
.field private h:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
sput-object v0, Lcom/instagram/common/analytics/al;->a:Ljava/util/Random;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/instagram/common/analytics/al;->h:I
const-wide/high16 v0, 0x4000
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
iput v0, p0, Lcom/instagram/common/analytics/al;->h:I
invoke-static {}, Lcom/instagram/common/analytics/al;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/al;->d:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/common/analytics/al;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/common/analytics/al;->g:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/analytics/al;->e:[I
return-void
.end method
.method private static a()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/instagram/common/analytics/al;->a:Ljava/util/Random;
invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
const/16 v1, 0x24
invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(J)V
.registers 6
const/4 v0, 0x1
const/4 v2, 0x0
iput-wide p1, p0, Lcom/instagram/common/analytics/al;->c:J
iput-wide p1, p0, Lcom/instagram/common/analytics/al;->b:J
iget v1, p0, Lcom/instagram/common/analytics/al;->h:I
new-array v1, v1, [I
iput-object v1, p0, Lcom/instagram/common/analytics/al;->e:[I
iget-object v1, p0, Lcom/instagram/common/analytics/al;->e:[I
aput v0, v1, v2
:goto_10
iget v1, p0, Lcom/instagram/common/analytics/al;->h:I
if-ge v0, v1, :cond_1b
iget-object v1, p0, Lcom/instagram/common/analytics/al;->e:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1b
iget v0, p0, Lcom/instagram/common/analytics/al;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/common/analytics/al;->f:I
iget v0, p0, Lcom/instagram/common/analytics/al;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/instagram/common/analytics/al;->g:I
return-void
.end method
.method private b(J)Lcom/instagram/common/analytics/b;
.registers 10
iget-wide v0, p0, Lcom/instagram/common/analytics/al;->b:J
sub-long v1, p1, v0
const/4 v0, 0x0
const-wide/16 v3, 0x0
cmp-long v3, v1, v3
if-ltz v3, :cond_11
const-wide/16 v3, 0x40
cmp-long v3, v1, v3
if-ltz v3, :cond_17
:cond_11
sget v0, Lcom/instagram/common/analytics/an;->b:I
invoke-direct {p0, p1, p2, v0}, Lcom/instagram/common/analytics/al;->c(JI)Lcom/instagram/common/analytics/b;
move-result-object v0
:cond_17
iget-object v3, p0, Lcom/instagram/common/analytics/al;->e:[I
if-nez v3, :cond_1f
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/al;->a(J)V
:goto_1e
return-object v0
:cond_1f
iget-object v3, p0, Lcom/instagram/common/analytics/al;->e:[I
long-to-int v4, v1
shr-int/lit8 v4, v4, 0x5
aget v5, v3, v4
const/4 v6, 0x1
long-to-int v1, v1
and-int/lit8 v1, v1, 0x1f
shl-int v1, v6, v1
or-int/2addr v1, v5
aput v1, v3, v4
iput-wide p1, p0, Lcom/instagram/common/analytics/al;->c:J
iget v1, p0, Lcom/instagram/common/analytics/al;->g:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/instagram/common/analytics/al;->g:I
goto :goto_1e
.end method
.method private b(JI)Lcom/instagram/common/analytics/b;
.registers 12
const-wide/16 v6, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/common/analytics/al;->e:[I
if-nez v0, :cond_9
move-object v0, v1
:goto_8
:cond_8
return-object v0
:cond_9
iget-wide v2, p0, Lcom/instagram/common/analytics/al;->c:J
cmp-long v0, p1, v2
if-lez v0, :cond_60
const-wide/16 v2, 0x40
iget-wide v4, p0, Lcom/instagram/common/analytics/al;->b:J
sub-long v4, p1, v4
add-long/2addr v4, v6
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v2
long-to-int v0, v2
:goto_1b
new-instance v2, Lcom/instagram/common/analytics/b;
const-string v3, "time_spent_bit_array"
invoke-direct {v2, v3, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "tos_id"
iget-object v3, p0, Lcom/instagram/common/analytics/al;->d:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "start_time"
iget-wide v3, p0, Lcom/instagram/common/analytics/al;->b:J
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "tos_array"
iget-object v3, p0, Lcom/instagram/common/analytics/al;->e:[I
invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "tos_len"
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "tos_seq"
iget v2, p0, Lcom/instagram/common/analytics/al;->f:I
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "tos_cum"
iget v2, p0, Lcom/instagram/common/analytics/al;->g:I
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v0
sget v1, Lcom/instagram/common/analytics/an;->d:I
if-ne p3, v1, :cond_8
const-string v1, "trigger"
const-string v2, "clock_change"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
goto :goto_8
:cond_60
iget-wide v2, p0, Lcom/instagram/common/analytics/al;->c:J
iget-wide v4, p0, Lcom/instagram/common/analytics/al;->b:J
sub-long/2addr v2, v4
add-long/2addr v2, v6
long-to-int v0, v2
goto :goto_1b
.end method
.method private b()V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/common/analytics/al;->e:[I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/common/analytics/al;->c:J
return-void
.end method
.method private c(JI)Lcom/instagram/common/analytics/b;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/analytics/al;->b(JI)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-direct {p0}, Lcom/instagram/common/analytics/al;->b()V
return-object v0
.end method
.method public final a(JI)Lcom/instagram/common/analytics/b;
.registers 9
const-wide/16 v3, 0x3e8
const/4 v0, 0x0
sget-object v1, Lcom/instagram/common/analytics/am;->a:[I
add-int/lit8 v2, p3, -0x1
aget v1, v1, v2
packed-switch v1, :pswitch_data_26
:cond_c
:goto_c
return-object v0
:pswitch_d
div-long v1, p1, v3
iget-wide v3, p0, Lcom/instagram/common/analytics/al;->c:J
cmp-long v3, v1, v3
if-lez v3, :cond_c
invoke-direct {p0, v1, v2}, Lcom/instagram/common/analytics/al;->b(J)Lcom/instagram/common/analytics/b;
move-result-object v0
goto :goto_c
:pswitch_1a
iget-object v1, p0, Lcom/instagram/common/analytics/al;->e:[I
if-eqz v1, :cond_c
div-long v0, p1, v3
invoke-direct {p0, v0, v1, p3}, Lcom/instagram/common/analytics/al;->c(JI)Lcom/instagram/common/analytics/b;
move-result-object v0
goto :goto_c
nop
:pswitch_data_26
.packed-switch 0x1
:pswitch_d
:pswitch_1a
:pswitch_1a
:pswitch_1a
:pswitch_1a
.end packed-switch
.end method