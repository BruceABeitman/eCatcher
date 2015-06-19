.class public Lcom/c/a/d;
.super Ljava/lang/Object;
.implements Ljava/io/Serializable;
.field private static final a:J = 0x4898b44f543a868L
.field static final c:Ljava/util/Comparator;
.field static final d:Ljava/util/Comparator;
.field static final e:Ljava/util/Comparator;
.field public static h_:Z
.field private static final k:[Ljava/lang/String;
.field private b:D
.field private g:Z
.field private h:D
.field private i:D
.field private j:J
.method static constructor <clinit>()V
.registers 15
const/16 v7, 0x65
const/16 v8, 0x3e
const/4 v9, 0x7
const/4 v13, 0x1
const/4 v3, 0x0
const/4 v0, 0x4
new-array v10, v0, [Ljava/lang/String;
const-string v0, "\u0008\u001d"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_125
move v2, v3
:cond_14
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_19
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_128
move v6, v9
:goto_21
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2d
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_19
:cond_2d
move v1, v0
move-object v0, v4
:goto_2f
if-gt v1, v2, :cond_14
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "\u0008N_\u000bsE"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_122
move v2, v3
:cond_46
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4b
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_134
move v6, v9
:goto_53
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_5f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4b
:cond_5f
move v1, v0
move-object v0, v4
:goto_61
if-gt v1, v2, :cond_46
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "IN"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_11f
move v2, v3
:cond_79
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_7e
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_140
move v6, v9
:goto_86
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_92
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_7e
:cond_92
move v1, v0
move-object v0, v4
:goto_94
if-gt v1, v2, :cond_79
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x3
const-string v0, "\u0011\u0006W\u0014\'\n\u000cT\u0002d\u0011NZ\u0008b\u0016\u0000\u0019\u0013\'\r\u000fH\u0002\'\u0004NH\u0006k\u000c\n\u001e\u0013n\u0008\u000b"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_c6
:cond_ab
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_b0
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_14c
move v5, v9
:goto_b8
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_c4
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_b0
:cond_c4
move v1, v0
move-object v0, v2
:cond_c6
if-gt v1, v3, :cond_ab
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/d;->k:[Ljava/lang/String;
new-instance v0, Lcom/c/a/ck;
invoke-direct {v0}, Lcom/c/a/ck;-><init>()V
sput-object v0, Lcom/c/a/d;->c:Ljava/util/Comparator;
new-instance v0, Lcom/c/a/co;
invoke-direct {v0}, Lcom/c/a/co;-><init>()V
sput-object v0, Lcom/c/a/d;->d:Ljava/util/Comparator;
new-instance v0, Lcom/c/a/cs;
invoke-direct {v0}, Lcom/c/a/cs;-><init>()V
sput-object v0, Lcom/c/a/d;->e:Ljava/util/Comparator;
return-void
:pswitch_eb
move v6, v7
goto/16 :goto_21
:pswitch_ee
const/16 v6, 0x6e
goto/16 :goto_21
:pswitch_f2
move v6, v8
goto/16 :goto_21
:pswitch_f5
const/16 v6, 0x67
goto/16 :goto_21
:pswitch_f9
move v6, v7
goto/16 :goto_53
:pswitch_fc
const/16 v6, 0x6e
goto/16 :goto_53
:pswitch_100
move v6, v8
goto/16 :goto_53
:pswitch_103
const/16 v6, 0x67
goto/16 :goto_53
:pswitch_107
move v6, v7
goto/16 :goto_86
:pswitch_10a
const/16 v6, 0x6e
goto/16 :goto_86
:pswitch_10e
move v6, v8
goto/16 :goto_86
:pswitch_111
const/16 v6, 0x67
goto/16 :goto_86
:pswitch_115
move v5, v7
goto :goto_b8
:pswitch_117
const/16 v5, 0x6e
goto :goto_b8
:pswitch_11a
move v5, v8
goto :goto_b8
:pswitch_11c
const/16 v5, 0x67
goto :goto_b8
:cond_11f
move v2, v3
goto/16 :goto_94
:cond_122
move v2, v3
goto/16 :goto_61
:cond_125
move v2, v3
goto/16 :goto_2f
:pswitch_data_14c
.packed-switch 0x0
:pswitch_115
:pswitch_117
:pswitch_11a
:pswitch_11c
.end packed-switch
:pswitch_data_134
.packed-switch 0x0
:pswitch_f9
:pswitch_fc
:pswitch_100
:pswitch_103
.end packed-switch
:pswitch_data_140
.packed-switch 0x0
:pswitch_107
:pswitch_10a
:pswitch_10e
:pswitch_111
.end packed-switch
:pswitch_data_128
.packed-switch 0x0
:pswitch_eb
:pswitch_ee
:pswitch_f2
:pswitch_f5
.end packed-switch
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected constructor <init>(DD)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/c/a/d;->h:D
iput-wide p3, p0, Lcom/c/a/d;->i:D
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/c/a/d;->j:J
return-void
.end method
.method protected constructor <init>(DDJ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/c/a/d;->h:D
iput-wide p3, p0, Lcom/c/a/d;->i:D
iput-wide p5, p0, Lcom/c/a/d;->j:J
return-void
.end method
.method static synthetic a(Lcom/c/a/d;)D
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->h:D
return-wide v0
.end method
.method static synthetic b(Lcom/c/a/d;)D
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->i:D
return-wide v0
.end method
.method static synthetic c(Lcom/c/a/d;)J
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->j:J
return-wide v0
.end method
.method public a(D)V
.registers 3
iput-wide p1, p0, Lcom/c/a/d;->h:D
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/c/a/d;->j:J
return-void
.end method
.method public b(D)V
.registers 3
iput-wide p1, p0, Lcom/c/a/d;->i:D
return-void
.end method
.method public c()D
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->h:D
return-wide v0
.end method
.method public c(D)V
.registers 4
iput-wide p1, p0, Lcom/c/a/d;->b:D
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/c/a/d;->g:Z
return-void
.end method
.method public d()D
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->i:D
return-wide v0
.end method
.method public e()J
.registers 5
iget-wide v0, p0, Lcom/c/a/d;->j:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_13
new-instance v0, Ljava/lang/UnsupportedOperationException;
sget-object v1, Lcom/c/a/d;->k:[Ljava/lang/String;
const/4 v2, 0x3
aget-object v1, v1, v2
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iget-wide v0, p0, Lcom/c/a/d;->j:J
return-wide v0
.end method
.method public f()D
.registers 3
iget-wide v0, p0, Lcom/c/a/d;->b:D
return-wide v0
.end method
.method public g()Z
.registers 2
iget-boolean v0, p0, Lcom/c/a/d;->g:Z
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
const-wide v3, 0x416312d000000000L
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/c/a/d;->c()D
move-result-wide v1
mul-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-double v1, v1
div-double/2addr v1, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/a/d;->k:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/c/a/d;->d()D
move-result-wide v1
mul-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-double v1, v1
div-double/2addr v1, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/c/a/d;->g()Z
move-result v0
if-eqz v0, :cond_6d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v2, p0, Lcom/c/a/d;->b:D
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lcom/c/a/d;->k:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_55
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/c/a/d;->j:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/a/d;->k:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_6d
const-string v0, ""
goto :goto_55
.end method