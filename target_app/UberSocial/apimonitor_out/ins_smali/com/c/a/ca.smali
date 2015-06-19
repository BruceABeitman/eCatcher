.class  Lcom/c/a/ca;
.super Ljava/lang/Object;
.implements Lcom/c/ap;
.field private static final c:[Ljava/lang/String;
.field private a:D
.field private final b:Lcom/c/ba;
.method static constructor <clinit>()V
.registers 15
const/16 v9, 0x58
const/16 v8, 0x43
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v7, 0x5d
const/4 v0, 0x4
new-array v10, v0, [Ljava/lang/String;
const-string v0, ".38=\u001d}.(+\r}!8x\u001e/&<,\u001c/c)0\u00183c\'=\u000b2y}"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_108
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_10c
const/16 v6, 0x79
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
const-string v0, "(-9=\u001f4-8<"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_105
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_118
const/16 v6, 0x79
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
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "}\":=D"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_103
move v2, v3
:cond_7c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_81
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_124
const/16 v6, 0x79
:goto_8a
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_96
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_81
:cond_96
move v1, v0
move-object v0, v4
:goto_98
if-gt v1, v2, :cond_7c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x3
const-string v0, ".38=\u001d`"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_cb
:cond_af
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_b4
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_130
const/16 v5, 0x79
:goto_bd
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_c9
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_b4
:cond_c9
move v1, v0
move-object v0, v2
:cond_cb
if-gt v1, v3, :cond_af
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/ca;->c:[Ljava/lang/String;
return-void
:pswitch_db
move v6, v7
goto/16 :goto_23
:pswitch_de
move v6, v8
goto/16 :goto_23
:pswitch_e1
move v6, v7
goto/16 :goto_23
:pswitch_e4
move v6, v9
goto/16 :goto_23
:pswitch_e7
move v6, v7
goto/16 :goto_56
:pswitch_ea
move v6, v8
goto/16 :goto_56
:pswitch_ed
move v6, v7
goto/16 :goto_56
:pswitch_f0
move v6, v9
goto/16 :goto_56
:pswitch_f3
move v6, v7
goto :goto_8a
:pswitch_f5
move v6, v8
goto :goto_8a
:pswitch_f7
move v6, v7
goto :goto_8a
:pswitch_f9
move v6, v9
goto :goto_8a
:pswitch_fb
move v5, v7
goto :goto_bd
:pswitch_fd
move v5, v8
goto :goto_bd
:pswitch_ff
move v5, v7
goto :goto_bd
:pswitch_101
move v5, v9
goto :goto_bd
:cond_103
move v2, v3
goto :goto_98
:cond_105
move v2, v3
goto/16 :goto_64
:cond_108
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_10c
.packed-switch 0x0
:pswitch_db
:pswitch_de
:pswitch_e1
:pswitch_e4
.end packed-switch
:pswitch_data_118
.packed-switch 0x0
:pswitch_e7
:pswitch_ea
:pswitch_ed
:pswitch_f0
.end packed-switch
:pswitch_data_130
.packed-switch 0x0
:pswitch_fb
:pswitch_fd
:pswitch_ff
:pswitch_101
.end packed-switch
:pswitch_data_124
.packed-switch 0x0
:pswitch_f3
:pswitch_f5
:pswitch_f7
:pswitch_f9
.end packed-switch
.end method
.method constructor <init>()V
.registers 4
const-wide/16 v0, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/c/a/ca;-><init>(DLcom/c/ba;)V
return-void
.end method
.method constructor <init>(DLcom/c/ba;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
cmpg-double v0, p1, v0
if-gez v0, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/ca;->c:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iput-wide p1, p0, Lcom/c/a/ca;->a:D
iput-object p3, p0, Lcom/c/a/ca;->b:Lcom/c/ba;
return-void
.end method
.method  a(Lcom/c/a/ca;)V
.registers 6
iget-wide v0, p0, Lcom/c/a/ca;->a:D
iget-wide v2, p1, Lcom/c/a/ca;->a:D
add-double/2addr v0, v2
iput-wide v0, p0, Lcom/c/a/ca;->a:D
return-void
.end method
.method  b()D
.registers 3
iget-wide v0, p0, Lcom/c/a/ca;->a:D
return-wide v0
.end method
.method public n_()Lcom/c/ba;
.registers 2
iget-object v0, p0, Lcom/c/a/ca;->b:Lcom/c/ba;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/c/a/ca;->c:[Ljava/lang/String;
const/4 v2, 0x3
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/c/a/ca;->a:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/a/ca;->c:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/c/a/ca;->b:Lcom/c/ba;
if-nez v0, :cond_2f
sget-object v0, Lcom/c/a/ca;->c:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v0, v0, v2
:goto_26
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2f
iget-object v0, p0, Lcom/c/a/ca;->b:Lcom/c/ba;
invoke-virtual {v0}, Lcom/c/ba;->a()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_26
.end method