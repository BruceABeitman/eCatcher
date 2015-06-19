.class  Lcom/c/a/dh;
.super Ljava/lang/Object;
.implements Lcom/c/a/aa;
.field private static final g:[Ljava/lang/String;
.field private final a:Lcom/c/bp;
.field private b:Lcom/c/ba;
.field private c:Lcom/c/ba;
.field private d:Lcom/c/ba;
.field private e:Z
.field private f:J
.method static constructor <clinit>()V
.registers 14
const/16 v9, 0x44
const/16 v8, 0x35
const/16 v7, 0x21
const/4 v12, 0x1
const/4 v3, 0x0
const/4 v0, 0x3
new-array v10, v0, [Ljava/lang/String;
const-string v0, "MZ\'\u0003\u0000HZ*B\u0003@Fd\u0017\u0004ET0\u0007\u0010\u001b\u0015%\u0006\u0011P@%\u0016\u0011\u001c"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_c8
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_cc
const/16 v6, 0x74
:goto_23
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "RA+\u0012\u0004H[#B3qfd\u0011\u0011@G\'\n"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_c6
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_4d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_d8
const/16 v6, 0x74
:goto_56
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_62
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4d
:cond_62
move v1, v0
move-object v0, v4
:goto_64
if-gt v1, v2, :cond_48
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v12
const/4 v6, 0x2
const-string v0, "RA%\u0010\u0000H[#B3qfd\u0011\u0011@G\'\n"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_97
:cond_7b
move-object v2, v0
move v4, v3
move v13, v1
move-object v1, v0
move v0, v13
:goto_80
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_e4
const/16 v5, 0x74
:goto_89
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_95
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_80
:cond_95
move v1, v0
move-object v0, v2
:cond_97
if-gt v1, v3, :cond_7b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/dh;->g:[Ljava/lang/String;
return-void
:pswitch_a7
move v6, v7
goto/16 :goto_23
:pswitch_aa
move v6, v8
goto/16 :goto_23
:pswitch_ad
move v6, v9
goto/16 :goto_23
:pswitch_b0
const/16 v6, 0x62
goto/16 :goto_23
:pswitch_b4
move v6, v7
goto :goto_56
:pswitch_b6
move v6, v8
goto :goto_56
:pswitch_b8
move v6, v9
goto :goto_56
:pswitch_ba
const/16 v6, 0x62
goto :goto_56
:pswitch_bd
move v5, v7
goto :goto_89
:pswitch_bf
move v5, v8
goto :goto_89
:pswitch_c1
move v5, v9
goto :goto_89
:pswitch_c3
const/16 v5, 0x62
goto :goto_89
:cond_c6
move v2, v3
goto :goto_64
:cond_c8
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_d8
.packed-switch 0x0
:pswitch_b4
:pswitch_b6
:pswitch_b8
:pswitch_ba
.end packed-switch
:pswitch_data_cc
.packed-switch 0x0
:pswitch_a7
:pswitch_aa
:pswitch_ad
:pswitch_b0
.end packed-switch
:pswitch_data_e4
.packed-switch 0x0
:pswitch_bd
:pswitch_bf
:pswitch_c1
:pswitch_c3
.end packed-switch
.end method
.method constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/c/a/dh;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/a/dh;->a:Lcom/c/bp;
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
iput-object v0, p0, Lcom/c/a/dh;->c:Lcom/c/ba;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/a/dh;->e:Z
invoke-virtual {p0}, Lcom/c/a/dh;->a()V
const-wide/16 v0, 0x5208
invoke-virtual {p0, v0, v1}, Lcom/c/a/dh;->a(J)V
return-void
.end method
.method private static a(Lcom/c/ba;Lcom/c/ba;)J
.registers 4
if-nez p0, :cond_8
const-wide v0, 0x7fffffffffffffffL
:goto_7
return-wide v0
:cond_8
invoke-virtual {p0, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v0
goto :goto_7
.end method
.method private b()Z
.registers 2
iget-object v0, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private static b(Lcom/c/a/cg;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
invoke-virtual {p0}, Lcom/c/a/cg;->h()I
move-result v2
if-gt v2, v1, :cond_12
invoke-virtual {p0}, Lcom/c/a/cg;->p()I
move-result v2
const/4 v3, 0x3
if-le v2, v3, :cond_4
:cond_12
move v0, v1
goto :goto_4
.end method
.method private f(Lcom/c/ba;)J
.registers 6
iget-wide v0, p0, Lcom/c/a/dh;->f:J
invoke-static {}, Lcom/c/a/ci;->an()J
move-result-wide v2
add-long/2addr v0, v2
iget-object v2, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
invoke-static {v2, p1}, Lcom/c/a/dh;->a(Lcom/c/ba;Lcom/c/ba;)J
move-result-wide v2
sub-long/2addr v0, v2
return-wide v0
.end method
.method private g(Lcom/c/ba;)J
.registers 8
iget-boolean v0, p0, Lcom/c/a/dh;->e:Z
if-eqz v0, :cond_23
iget-wide v0, p0, Lcom/c/a/dh;->f:J
invoke-static {}, Lcom/c/a/ci;->al()J
move-result-wide v2
invoke-static {}, Lcom/c/a/ci;->am()J
move-result-wide v4
add-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
:goto_13
invoke-direct {p0, p1}, Lcom/c/a/dh;->f(Lcom/c/ba;)J
move-result-wide v2
iget-object v4, p0, Lcom/c/a/dh;->c:Lcom/c/ba;
invoke-virtual {v4, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v4
sub-long/2addr v0, v4
invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
return-wide v0
:cond_23
iget-wide v0, p0, Lcom/c/a/dh;->f:J
goto :goto_13
.end method
.method private h(Lcom/c/ba;)J
.registers 6
invoke-static {}, Lcom/c/a/ci;->al()J
move-result-wide v0
iget-object v2, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
invoke-virtual {v2, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v2
sub-long/2addr v0, v2
return-wide v0
.end method
.method public a(Lcom/c/ba;)J
.registers 4
iget-wide v0, p0, Lcom/c/a/dh;->f:J
return-wide v0
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/c/a/dh;->f:J
return-void
.end method
.method public a(Lcom/c/a/bv;)V
.registers 2
return-void
.end method
.method public a(Lcom/c/a/cg;)V
.registers 7
invoke-static {p1}, Lcom/c/a/dh;->b(Lcom/c/a/cg;)Z
move-result v0
iget-object v1, p0, Lcom/c/a/dh;->a:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/a/dh;->g:[Ljava/lang/String;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz v0, :cond_27
invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v0
iput-object v0, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
:cond_27
return-void
.end method
.method public a(Z)V
.registers 2
return-void
.end method
.method public b(Lcom/c/ba;)Lcom/c/o;
.registers 10
const/4 v1, 0x1
const-wide/16 v6, 0x0
iget-object v0, p0, Lcom/c/a/dh;->c:Lcom/c/ba;
if-nez v0, :cond_14
iget-wide v2, p0, Lcom/c/a/dh;->f:J
invoke-static {}, Lcom/c/a/ci;->ao()J
move-result-wide v4
sub-long/2addr v2, v4
invoke-static {v2, v3, p1}, Lcom/c/ba;->a(JLcom/c/ba;)Lcom/c/ba;
move-result-object v0
iput-object v0, p0, Lcom/c/a/dh;->c:Lcom/c/ba;
:cond_14
invoke-direct {p0}, Lcom/c/a/dh;->b()Z
move-result v0
if-eqz v0, :cond_43
invoke-direct {p0, p1}, Lcom/c/a/dh;->f(Lcom/c/ba;)J
move-result-wide v2
cmp-long v0, v2, v6
if-gtz v0, :cond_72
move v0, v1
:goto_23
if-eqz v0, :cond_2d
invoke-direct {p0, p1}, Lcom/c/a/dh;->h(Lcom/c/ba;)J
move-result-wide v2
cmp-long v2, v2, v6
if-gtz v2, :cond_3f
:cond_2d
iget-object v2, p0, Lcom/c/a/dh;->a:Lcom/c/bp;
sget-object v3, Lcom/c/a/dh;->g:[Ljava/lang/String;
aget-object v1, v3, v1
invoke-virtual {v2, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
iput-boolean v0, p0, Lcom/c/a/dh;->e:Z
iget-object v0, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
iput-object v0, p0, Lcom/c/a/dh;->c:Lcom/c/ba;
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
:cond_3f
sget-boolean v0, Lcom/c/a/d;->h_:Z
if-eqz v0, :cond_57
:cond_43
invoke-direct {p0, p1}, Lcom/c/a/dh;->g(Lcom/c/ba;)J
move-result-wide v0
cmp-long v0, v0, v6
if-gtz v0, :cond_57
iget-object v0, p0, Lcom/c/a/dh;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/dh;->g:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
iput-object p1, p0, Lcom/c/a/dh;->b:Lcom/c/ba;
:cond_57
invoke-direct {p0}, Lcom/c/a/dh;->b()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-direct {p0}, Lcom/c/a/dh;->b()Z
move-result v0
if-eqz v0, :cond_74
invoke-direct {p0, p1}, Lcom/c/a/dh;->h(Lcom/c/ba;)J
move-result-wide v0
:goto_69
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v2, v0}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
return-object v0
:cond_72
const/4 v0, 0x0
goto :goto_23
:cond_74
invoke-direct {p0, p1}, Lcom/c/a/dh;->g(Lcom/c/ba;)J
move-result-wide v0
goto :goto_69
.end method
.method public c(Lcom/c/ba;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public d(Lcom/c/ba;)Z
.registers 10
iget-object v0, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
invoke-static {v0, p1}, Lcom/c/a/dh;->a(Lcom/c/ba;Lcom/c/ba;)J
move-result-wide v0
long-to-double v0, v0
iget-wide v2, p0, Lcom/c/a/dh;->f:J
long-to-double v2, v2
iget-wide v4, p0, Lcom/c/a/dh;->f:J
long-to-double v4, v4
const-wide v6, 0x3fc999999999999aL
mul-double/2addr v4, v6
invoke-static {}, Lcom/c/a/ci;->ap()J
move-result-wide v6
long-to-double v6, v6
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D
move-result-wide v4
sub-double/2addr v2, v4
cmpl-double v0, v0, v2
if-ltz v0, :cond_23
const/4 v0, 0x1
:goto_22
return v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method public e(Lcom/c/ba;)J
.registers 6
iget-object v0, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
if-nez v0, :cond_7
const-wide/high16 v0, -0x8000
:goto_6
return-wide v0
:cond_7
iget-wide v0, p0, Lcom/c/a/dh;->f:J
iget-object v2, p0, Lcom/c/a/dh;->d:Lcom/c/ba;
invoke-virtual {v2, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v2
sub-long/2addr v0, v2
invoke-static {}, Lcom/c/a/ci;->ac()J
move-result-wide v2
sub-long/2addr v0, v2
goto :goto_6
.end method