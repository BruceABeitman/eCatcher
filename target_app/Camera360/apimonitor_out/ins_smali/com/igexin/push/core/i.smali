.class public Lcom/igexin/push/core/i;
.super Ljava/lang/Object;
.field private static e:Lcom/igexin/push/core/i;
.field public a:J
.field private b:Lcom/igexin/push/core/l;
.field private c:J
.field private d:Landroid/net/ConnectivityManager;
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0x3a980
iput-wide v0, p0, Lcom/igexin/push/core/i;->a:J
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
iput-object v0, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->h()Landroid/net/ConnectivityManager;
move-result-object v0
iput-object v0, p0, Lcom/igexin/push/core/i;->d:Landroid/net/ConnectivityManager;
return-void
.end method
.method public static a()Lcom/igexin/push/core/i;
.registers 1
sget-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/core/i;
invoke-direct {v0}, Lcom/igexin/push/core/i;-><init>()V
sput-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;
:cond_b
sget-object v0, Lcom/igexin/push/core/i;->e:Lcom/igexin/push/core/i;
return-object v0
.end method
.method public a(JJ)J
.registers 6
cmp-long v0, p1, p3
if-lez v0, :cond_5
:goto_4
return-wide p1
:cond_5
move-wide p1, p3
goto :goto_4
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/igexin/push/core/i;->a:J
return-void
.end method
.method public a(Lcom/igexin/push/core/k;)V
.registers 12
const-wide/16 v8, 0x2
const-wide/16 v6, 0x1
const-wide/32 v4, 0xea60
const-wide/32 v2, 0x3a980
sget-object v0, Lcom/igexin/push/core/j;->b:[I
iget-object v1, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;
invoke-virtual {v1}, Lcom/igexin/push/core/l;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_bc
:cond_17
:goto_17
return-void
:pswitch_18
sget-object v0, Lcom/igexin/push/core/j;->a:[I
invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_c6
goto :goto_17
:pswitch_24
iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J
add-long/2addr v0, v4
const-wide/32 v2, 0x668a0
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->b(JJ)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_37
iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J
add-long/2addr v0, v6
iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J
iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J
cmp-long v0, v0, v8
if-ltz v0, :cond_17
iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J
sub-long/2addr v0, v4
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->a(JJ)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_52
invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_5b
sget-object v0, Lcom/igexin/push/core/j;->a:[I
invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d2
goto :goto_17
:pswitch_67
sget-object v0, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_6d
iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J
sub-long/2addr v0, v4
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igexin/push/core/i;->a(JJ)J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/i;->a(J)V
iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J
add-long/2addr v0, v6
iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J
iget-wide v0, p0, Lcom/igexin/push/core/i;->c:J
cmp-long v0, v0, v8
if-ltz v0, :cond_17
invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_8b
invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto :goto_17
:pswitch_94
sget-object v0, Lcom/igexin/push/core/j;->a:[I
invoke-virtual {p1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_de
goto/16 :goto_17
:pswitch_a1
invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto/16 :goto_17
:pswitch_ab
sget-object v0, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto/16 :goto_17
:pswitch_b2
invoke-virtual {p0, v2, v3}, Lcom/igexin/push/core/i;->a(J)V
sget-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {p0, v0}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/l;)V
goto/16 :goto_17
:pswitch_data_bc
.packed-switch 0x1
:pswitch_18
:pswitch_5b
:pswitch_94
.end packed-switch
:pswitch_data_d2
.packed-switch 0x1
:pswitch_67
:pswitch_6d
:pswitch_6d
:pswitch_8b
.end packed-switch
:pswitch_data_de
.packed-switch 0x1
:pswitch_a1
:pswitch_ab
:pswitch_ab
:pswitch_b2
.end packed-switch
:pswitch_data_c6
.packed-switch 0x1
:pswitch_24
:pswitch_37
:pswitch_37
:pswitch_52
.end packed-switch
.end method
.method public a(Lcom/igexin/push/core/l;)V
.registers 4
iput-object p1, p0, Lcom/igexin/push/core/i;->b:Lcom/igexin/push/core/l;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/igexin/push/core/i;->c:J
return-void
.end method
.method public b()J
.registers 6
const-wide/32 v2, 0x36ee80
iget-wide v0, p0, Lcom/igexin/push/core/i;->a:J
sget v4, Lcom/igexin/push/a/j;->h:I
if-lez v4, :cond_e
sget v0, Lcom/igexin/push/a/j;->h:I
mul-int/lit16 v0, v0, 0x3e8
int-to-long v0, v0
:cond_e
iget-object v4, p0, Lcom/igexin/push/core/i;->d:Landroid/net/ConnectivityManager;
invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v4
if-eqz v4, :cond_1c
invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v4
if-nez v4, :cond_1e
:cond_1c
move-wide v0, v2
:goto_1d
:cond_1d
return-wide v0
:cond_1e
sget-boolean v4, Lcom/igexin/push/core/g;->o:Z
if-nez v4, :cond_24
move-wide v0, v2
goto :goto_1d
:cond_24
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/d/j;->a()Z
move-result v4
if-nez v4, :cond_1d
move-wide v0, v2
goto :goto_1d
.end method
.method public b(JJ)J
.registers 6
cmp-long v0, p1, p3
if-gez v0, :cond_5
:goto_4
return-wide p1
:cond_5
move-wide p1, p3
goto :goto_4
.end method