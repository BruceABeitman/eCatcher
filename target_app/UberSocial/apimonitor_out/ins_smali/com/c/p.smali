.class  Lcom/c/p;
.super Landroid/telephony/PhoneStateListener;
.field static final a:Z
.field private static final c:[Ljava/lang/String;
.field final b:Lcom/c/n;
.method static constructor <clinit>()V
.registers 15
const/16 v9, 0xd
const/16 v10, 0xa
const/4 v8, 0x4
const/4 v0, 0x1
const/4 v1, 0x0
new-array v11, v8, [Ljava/lang/String;
const-string v2, "\u001cj\u0016hx\u0005m&hY\u0007e1hI\u001be+jo\u0017,"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_11b
move v4, v1
:cond_13
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_18
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_11e
move v7, v10
:goto_20
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_2c
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_18
:cond_2c
move v3, v2
move-object v2, v5
:goto_2e
if-gt v3, v4, :cond_13
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v1
const-string v2, "\u0016|&hz\u0007m*c*\u001ajebd a7{c\u0010a\u0016yk\u0007a\u0006ek\u001dc i\"Z"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_118
move v4, v1
:cond_45
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_4a
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_12a
move v7, v10
:goto_52
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_5e
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_4a
:cond_5e
move v3, v2
move-object v2, v5
:goto_60
if-gt v3, v4, :cond_45
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v0
const/4 v12, 0x2
const-string v2, "\u001cj\u0006hf\u001fH*nk\u0007m*cI\u001be+jo\u0017,"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_115
move v4, v1
:cond_78
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_7d
aget-char v13, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_136
move v7, v10
:goto_85
xor-int/2addr v7, v13
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_91
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_7d
:cond_91
move v3, v2
move-object v2, v5
:goto_93
if-gt v3, v4, :cond_78
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v12
const/4 v12, 0x3
const-string v2, "\u0016|&hz\u0007m*c*\u001ajebd0a)aF\u001cg$yc\u001cj\u0006ek\u001dc i"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_113
move v4, v1
:cond_ab
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_b0
aget-char v13, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_142
move v7, v10
:goto_b8
xor-int/2addr v7, v13
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_c4
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_b0
:cond_c4
move v3, v2
move-object v2, v5
:goto_c6
if-gt v3, v4, :cond_ab
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v12
sput-object v11, Lcom/c/p;->c:[Ljava/lang/String;
const-class v2, Lcom/c/n;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_e0
:goto_dd
sput-boolean v0, Lcom/c/p;->a:Z
return-void
:cond_e0
move v0, v1
goto :goto_dd
:pswitch_e2
const/16 v7, 0x73
goto/16 :goto_20
:pswitch_e6
move v7, v8
goto/16 :goto_20
:pswitch_e9
const/16 v7, 0x45
goto/16 :goto_20
:pswitch_ed
move v7, v9
goto/16 :goto_20
:pswitch_f0
const/16 v7, 0x73
goto/16 :goto_52
:pswitch_f4
move v7, v8
goto/16 :goto_52
:pswitch_f7
const/16 v7, 0x45
goto/16 :goto_52
:pswitch_fb
move v7, v9
goto/16 :goto_52
:pswitch_fe
const/16 v7, 0x73
goto :goto_85
:pswitch_101
move v7, v8
goto :goto_85
:pswitch_103
const/16 v7, 0x45
goto :goto_85
:pswitch_106
move v7, v9
goto/16 :goto_85
:pswitch_109
const/16 v7, 0x73
goto :goto_b8
:pswitch_10c
move v7, v8
goto :goto_b8
:pswitch_10e
const/16 v7, 0x45
goto :goto_b8
:pswitch_111
move v7, v9
goto :goto_b8
:cond_113
move v4, v1
goto :goto_c6
:cond_115
move v4, v1
goto/16 :goto_93
:cond_118
move v4, v1
goto/16 :goto_60
:cond_11b
move v4, v1
goto/16 :goto_2e
:pswitch_data_12a
.packed-switch 0x0
:pswitch_f0
:pswitch_f4
:pswitch_f7
:pswitch_fb
.end packed-switch
:pswitch_data_136
.packed-switch 0x0
:pswitch_fe
:pswitch_101
:pswitch_103
:pswitch_106
.end packed-switch
:pswitch_data_142
.packed-switch 0x0
:pswitch_109
:pswitch_10c
:pswitch_10e
:pswitch_111
.end packed-switch
:pswitch_data_11e
.packed-switch 0x0
:pswitch_e2
:pswitch_e6
:pswitch_e9
:pswitch_ed
.end packed-switch
.end method
.method constructor <init>(Lcom/c/n;)V
.registers 2
iput-object p1, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V
return-void
.end method
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v0}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v0
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v0}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/p;->c:[Ljava/lang/String;
const/4 v3, 0x2
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_31
sget-boolean v0, Lcom/c/p;->a:Z
if-nez v0, :cond_51
if-eqz p1, :cond_51
instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;
if-nez v0, :cond_51
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:catch_41
:try_end_41
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_41
move-exception v0
iget-object v1, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v1}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v1
sget-object v2, Lcom/c/p;->c:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_50
return-void
:try_start_51
:cond_51
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;
invoke-static {v0, p1}, Lcom/c/n;->a(Lcom/c/n;Landroid/telephony/cdma/CdmaCellLocation;)V
:try_end_58
.catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_41
goto :goto_50
.end method
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
.registers 7
sget v1, Lcom/c/n;->f:I
:try_start_2
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v0}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v0
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v0}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/p;->c:[Ljava/lang/String;
const/4 v4, 0x0
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_33
invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I
:try_end_36
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_4a
move-result v0
packed-switch v0, :pswitch_data_5a
:goto_3a
:pswitch_3a
sget-boolean v0, Lcom/c/bp;->b:Z
if-eqz v0, :cond_42
add-int/lit8 v0, v1, 0x1
sput v0, Lcom/c/n;->f:I
:cond_42
return-void
:try_start_43
:pswitch_43
iget-object v0, p0, Lcom/c/p;->b:Lcom/c/n;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/c/n;->a(Lcom/c/n;Landroid/telephony/cdma/CdmaCellLocation;)V
:try_end_49
.catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_49} :catch_4a
goto :goto_3a
:catch_4a
move-exception v0
iget-object v2, p0, Lcom/c/p;->b:Lcom/c/n;
invoke-static {v2}, Lcom/c/n;->a(Lcom/c/n;)Lcom/c/bp;
move-result-object v2
sget-object v3, Lcom/c/p;->c:[Ljava/lang/String;
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-virtual {v2, v3, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3a
:pswitch_data_5a
.packed-switch 0x1
:pswitch_43
:pswitch_3a
:pswitch_43
.end packed-switch
.end method