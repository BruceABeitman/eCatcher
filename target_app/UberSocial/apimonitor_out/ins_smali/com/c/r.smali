.class public Lcom/c/r;
.super Ljava/lang/Object;
.implements Lcom/c/ap;
.field private static final h:[Ljava/lang/String;
.field public final a:F
.field public final b:F
.field public final c:F
.field public final d:D
.field final e:Lcom/c/am;
.field private final g:Lcom/c/ba;
.method static constructor <clinit>()V
.registers 15
const/16 v9, 0x15
const/16 v7, 0xb
const/4 v8, 0x4
const/4 v13, 0x1
const/4 v3, 0x0
new-array v10, v8, [Ljava/lang/String;
const-string v0, "R+"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_10a
move v2, v3
:cond_13
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_18
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_10e
move v6, v9
:goto_20
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2c
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_18
:cond_2c
move v1, v0
move-object v0, v4
:goto_2e
if-gt v1, v2, :cond_13
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "W+2er\u0010b+qq\u001b6"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_107
move v2, v3
:cond_45
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_11a
move v6, v9
:goto_52
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_5e
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4a
:cond_5e
move v1, v0
move-object v0, v4
:goto_60
if-gt v1, v2, :cond_45
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "\u0013x"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_105
move v2, v3
:cond_78
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_7d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_126
move v6, v9
:goto_85
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_91
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_7d
:cond_91
move v1, v0
move-object v0, v4
:goto_93
if-gt v1, v2, :cond_78
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x3
const-string v0, "^j8a("
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_c5
:cond_aa
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_af
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_132
move v5, v9
:goto_b7
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_c3
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_af
:cond_c3
move v1, v0
move-object v0, v2
:cond_c5
if-gt v1, v3, :cond_aa
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/r;->h:[Ljava/lang/String;
return-void
:pswitch_d5
const/16 v6, 0x7e
goto/16 :goto_20
:pswitch_d9
move v6, v7
goto/16 :goto_20
:pswitch_dc
const/16 v6, 0x5f
goto/16 :goto_20
:pswitch_e0
move v6, v8
goto/16 :goto_20
:pswitch_e3
const/16 v6, 0x7e
goto/16 :goto_52
:pswitch_e7
move v6, v7
goto/16 :goto_52
:pswitch_ea
const/16 v6, 0x5f
goto/16 :goto_52
:pswitch_ee
move v6, v8
goto/16 :goto_52
:pswitch_f1
const/16 v6, 0x7e
goto :goto_85
:pswitch_f4
move v6, v7
goto :goto_85
:pswitch_f6
const/16 v6, 0x5f
goto :goto_85
:pswitch_f9
move v6, v8
goto :goto_85
:pswitch_fb
const/16 v5, 0x7e
goto :goto_b7
:pswitch_fe
move v5, v7
goto :goto_b7
:pswitch_100
const/16 v5, 0x5f
goto :goto_b7
:pswitch_103
move v5, v8
goto :goto_b7
:cond_105
move v2, v3
goto :goto_93
:cond_107
move v2, v3
goto/16 :goto_60
:cond_10a
move v2, v3
goto/16 :goto_2e
nop
:pswitch_data_10e
.packed-switch 0x0
:pswitch_d5
:pswitch_d9
:pswitch_dc
:pswitch_e0
.end packed-switch
:pswitch_data_132
.packed-switch 0x0
:pswitch_fb
:pswitch_fe
:pswitch_100
:pswitch_103
.end packed-switch
:pswitch_data_126
.packed-switch 0x0
:pswitch_f1
:pswitch_f4
:pswitch_f6
:pswitch_f9
.end packed-switch
:pswitch_data_11a
.packed-switch 0x0
:pswitch_e3
:pswitch_e7
:pswitch_ea
:pswitch_ee
.end packed-switch
.end method
.method constructor <init>(Lcom/c/am;FFFLcom/c/ba;)V
.registers 9
sget-boolean v0, Lcom/c/am;->b:Z
iput-object p1, p0, Lcom/c/r;->e:Lcom/c/am;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p5, p0, Lcom/c/r;->g:Lcom/c/ba;
iput p2, p0, Lcom/c/r;->a:F
iput p3, p0, Lcom/c/r;->b:F
iput p4, p0, Lcom/c/r;->c:F
mul-float v1, p2, p2
mul-float v2, p3, p3
add-float/2addr v1, v2
mul-float v2, p4, p4
add-float/2addr v1, v2
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v1
iput-wide v1, p0, Lcom/c/r;->d:D
sget-boolean v1, Lcom/c/bp;->b:Z
if-eqz v1, :cond_27
if-eqz v0, :cond_28
const/4 v0, 0x0
:goto_25
sput-boolean v0, Lcom/c/am;->b:Z
:cond_27
return-void
:cond_28
const/4 v0, 0x1
goto :goto_25
.end method
.method public b()F
.registers 2
iget v0, p0, Lcom/c/r;->a:F
return v0
.end method
.method public c()F
.registers 2
iget v0, p0, Lcom/c/r;->b:F
return v0
.end method
.method public d()F
.registers 2
iget v0, p0, Lcom/c/r;->c:F
return v0
.end method
.method public e()D
.registers 3
iget-wide v0, p0, Lcom/c/r;->d:D
return-wide v0
.end method
.method public n_()Lcom/c/ba;
.registers 2
iget-object v0, p0, Lcom/c/r;->g:Lcom/c/ba;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
sget-boolean v2, Lcom/c/am;->b:Z
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/c/r;->a:F
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/r;->h:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/c/r;->b:F
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/r;->h:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/c/r;->c:F
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/r;->h:[Ljava/lang/String;
aget-object v4, v4, v1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, p0, Lcom/c/r;->d:D
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/r;->h:[Ljava/lang/String;
const/4 v5, 0x3
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/c/r;->g:Lcom/c/ba;
invoke-virtual {v4}, Lcom/c/ba;->a()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/c/r;->h:[Ljava/lang/String;
const/4 v5, 0x2
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
if-eqz v2, :cond_67
sget-boolean v2, Lcom/c/bp;->b:Z
if-eqz v2, :cond_68
:goto_65
sput-boolean v0, Lcom/c/bp;->b:Z
:cond_67
return-object v3
:cond_68
move v0, v1
goto :goto_65
.end method