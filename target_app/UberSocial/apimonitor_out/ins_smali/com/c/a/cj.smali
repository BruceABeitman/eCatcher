.class final Lcom/c/a/cj;
.super Ljava/lang/Object;
.field private static final f:[Ljava/lang/String;
.field final a:Ljava/util/concurrent/Future;
.field final b:I
.field final c:I
.field final d:Lcom/c/ba;
.field final e:Lcom/c/a/cf;
.method static constructor <clinit>()V
.registers 14
const/16 v9, 0x1a
const/16 v8, 0xf
const/4 v7, 0x2
const/4 v12, 0x1
const/4 v3, 0x0
const/4 v0, 0x3
new-array v10, v0, [Ljava/lang/String;
const-string v0, "7vK}{*kAa\'"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_c6
move v2, v3
:cond_14
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_19
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_ca
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
const-string v0, "~qMnt\u0010wCm\u007f,?"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_c4
move v2, v3
:cond_46
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_4b
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_d6
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
aput-object v0, v10, v12
const-string v0, "~vGb\u007f,?"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_92
:cond_77
move-object v2, v0
move v4, v3
move v13, v1
move-object v1, v0
move v0, v13
:goto_7c
aget-char v6, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_e2
move v5, v9
:goto_84
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_90
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_7c
:cond_90
move v1, v0
move-object v0, v2
:cond_92
if-gt v1, v3, :cond_77
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v7
sput-object v10, Lcom/c/a/cj;->f:[Ljava/lang/String;
return-void
:pswitch_a2
const/16 v6, 0x5e
goto/16 :goto_21
:pswitch_a6
move v6, v7
goto/16 :goto_21
:pswitch_a9
const/16 v6, 0x2e
goto/16 :goto_21
:pswitch_ad
move v6, v8
goto/16 :goto_21
:pswitch_b0
const/16 v6, 0x5e
goto :goto_53
:pswitch_b3
move v6, v7
goto :goto_53
:pswitch_b5
const/16 v6, 0x2e
goto :goto_53
:pswitch_b8
move v6, v8
goto :goto_53
:pswitch_ba
const/16 v5, 0x5e
goto :goto_84
:pswitch_bd
move v5, v7
goto :goto_84
:pswitch_bf
const/16 v5, 0x2e
goto :goto_84
:pswitch_c2
move v5, v8
goto :goto_84
:cond_c4
move v2, v3
goto :goto_61
:cond_c6
move v2, v3
goto/16 :goto_2f
nop
:pswitch_data_ca
.packed-switch 0x0
:pswitch_a2
:pswitch_a6
:pswitch_a9
:pswitch_ad
.end packed-switch
:pswitch_data_e2
.packed-switch 0x0
:pswitch_ba
:pswitch_bd
:pswitch_bf
:pswitch_c2
.end packed-switch
:pswitch_data_d6
.packed-switch 0x0
:pswitch_b0
:pswitch_b3
:pswitch_b5
:pswitch_b8
.end packed-switch
.end method
.method constructor <init>(Lcom/c/a/cf;Ljava/util/concurrent/Future;IILcom/c/ba;)V
.registers 6
iput-object p1, p0, Lcom/c/a/cj;->e:Lcom/c/a/cf;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/c/a/cj;->a:Ljava/util/concurrent/Future;
iput p3, p0, Lcom/c/a/cj;->b:I
iput p4, p0, Lcom/c/a/cj;->c:I
iput-object p5, p0, Lcom/c/a/cj;->d:Lcom/c/ba;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/c/a/cj;->f:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/c/a/cj;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/a/cj;->f:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/c/a/cj;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/a/cj;->f:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/c/a/cj;->d:Lcom/c/ba;
invoke-virtual {v1}, Lcom/c/ba;->a()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method