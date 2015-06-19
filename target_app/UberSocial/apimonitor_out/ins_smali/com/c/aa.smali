.class final Lcom/c/aa;
.super Ljava/lang/Object;
.field private static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0x52
const/16 v9, 0x41
const/16 v7, 0x37
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v0, 0xa
new-array v10, v0, [Ljava/lang/String;
const-string v0, "G33\u0010\u0001Y5a\r\u0007Y\u007f\u00063:dr/\u0006\u0001P:#\u000c\u001a\rr"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2b0
move v2, v3
:cond_16
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1b
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2b4
const/16 v6, 0x68
:goto_24
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_30
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1b
:cond_30
move v1, v0
move-object v0, v4
:goto_32
if-gt v1, v2, :cond_16
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "\u0017<$\n\u000f_0.\u0011HT7-\u000f\u001b"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2ad
move v2, v3
:cond_49
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4e
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2c0
const/16 v6, 0x68
:goto_57
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_63
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4e
:cond_63
move v1, v0
move-object v0, v4
:goto_65
if-gt v1, v2, :cond_49
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "T=4\u000f\u000cYu5C\u0018V 2\u0006Ht\u001b\u0005L$v\u0011{C"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2aa
move v2, v3
:cond_7d
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_82
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2cc
const/16 v6, 0x68
:goto_8b
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_97
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_82
:cond_97
move v1, v0
move-object v0, v4
:goto_99
if-gt v1, v2, :cond_7d
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x3
const-string v0, "T=4\u000f\u000cYu5C\u0018V 2\u0006HY7(\u0004\u0000U=3C\u000bR>-"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2a7
move v2, v3
:cond_b1
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_b6
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2d8
const/16 v6, 0x68
:goto_bf
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_cb
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_b6
:cond_cb
move v1, v0
move-object v0, v4
:goto_cd
if-gt v1, v2, :cond_b1
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x4
const-string v0, "Y=a\r\r^5)\u0001\u0007Er\"\u0006\u0004[!"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2a4
move v2, v3
:cond_e5
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_ea
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2e4
const/16 v6, 0x68
:goto_f3
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_ff
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_ea
:cond_ff
move v1, v0
move-object v0, v4
:goto_101
if-gt v1, v2, :cond_e5
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x5
const-string v0, "^5/\u000c\u001a^<&C\u0006R;&\u000b\nX a\u0001\rT34\u0010\r\u0017=\'C\u001dY9/\u000c\u001fYr\u0002*,\u0017=3C:d\u0001\u0008C"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2a1
move v2, v3
:cond_119
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_11e
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2f0
const/16 v6, 0x68
:goto_127
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_133
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_11e
:cond_133
move v1, v0
move-object v0, v4
:goto_135
if-gt v1, v2, :cond_119
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x6
const-string v0, "G33\u0010\u0001Y5a$8e\u0001a\r\r^5)\u0001\u0007Eha"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_29e
move v2, v3
:cond_14d
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_152
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_2fc
const/16 v6, 0x68
:goto_15b
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_167
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_152
:cond_167
move v1, v0
move-object v0, v4
:goto_169
if-gt v1, v2, :cond_14d
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x7
const-string v0, "G33\u0010\rSr\"\u0006\u0004[ha"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_29b
move v2, v3
:cond_181
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_186
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_308
const/16 v6, 0x68
:goto_18f
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_19b
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_186
:cond_19b
move v1, v0
move-object v0, v4
:goto_19d
if-gt v1, v2, :cond_181
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x8
const-string v0, "Q=4\r\u000c\u0017"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_298
move v2, v3
:cond_1b6
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1bb
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_314
const/16 v6, 0x68
:goto_1c4
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1d0
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1bb
:cond_1d0
move v1, v0
move-object v0, v4
:goto_1d2
if-gt v1, v2, :cond_1b6
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v6, 0x9
const-string v0, "Y75\u0014\u0007E9a\u0017\u0011G7a\u0016\u0006\\<.\u0014\u0006"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_206
:cond_1ea
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_1ef
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_320
const/16 v5, 0x68
:goto_1f8
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_204
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_1ef
:cond_204
move v1, v0
move-object v0, v2
:cond_206
if-gt v1, v3, :cond_1ea
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/aa;->a:[Ljava/lang/String;
return-void
:pswitch_216
move v6, v7
goto/16 :goto_24
:pswitch_219
move v6, v8
goto/16 :goto_24
:pswitch_21c
move v6, v9
goto/16 :goto_24
:pswitch_21f
const/16 v6, 0x63
goto/16 :goto_24
:pswitch_223
move v6, v7
goto/16 :goto_57
:pswitch_226
move v6, v8
goto/16 :goto_57
:pswitch_229
move v6, v9
goto/16 :goto_57
:pswitch_22c
const/16 v6, 0x63
goto/16 :goto_57
:pswitch_230
move v6, v7
goto/16 :goto_8b
:pswitch_233
move v6, v8
goto/16 :goto_8b
:pswitch_236
move v6, v9
goto/16 :goto_8b
:pswitch_239
const/16 v6, 0x63
goto/16 :goto_8b
:pswitch_23d
move v6, v7
goto/16 :goto_bf
:pswitch_240
move v6, v8
goto/16 :goto_bf
:pswitch_243
move v6, v9
goto/16 :goto_bf
:pswitch_246
const/16 v6, 0x63
goto/16 :goto_bf
:pswitch_24a
move v6, v7
goto/16 :goto_f3
:pswitch_24d
move v6, v8
goto/16 :goto_f3
:pswitch_250
move v6, v9
goto/16 :goto_f3
:pswitch_253
const/16 v6, 0x63
goto/16 :goto_f3
:pswitch_257
move v6, v7
goto/16 :goto_127
:pswitch_25a
move v6, v8
goto/16 :goto_127
:pswitch_25d
move v6, v9
goto/16 :goto_127
:pswitch_260
const/16 v6, 0x63
goto/16 :goto_127
:pswitch_264
move v6, v7
goto/16 :goto_15b
:pswitch_267
move v6, v8
goto/16 :goto_15b
:pswitch_26a
move v6, v9
goto/16 :goto_15b
:pswitch_26d
const/16 v6, 0x63
goto/16 :goto_15b
:pswitch_271
move v6, v7
goto/16 :goto_18f
:pswitch_274
move v6, v8
goto/16 :goto_18f
:pswitch_277
move v6, v9
goto/16 :goto_18f
:pswitch_27a
const/16 v6, 0x63
goto/16 :goto_18f
:pswitch_27e
move v6, v7
goto/16 :goto_1c4
:pswitch_281
move v6, v8
goto/16 :goto_1c4
:pswitch_284
move v6, v9
goto/16 :goto_1c4
:pswitch_287
const/16 v6, 0x63
goto/16 :goto_1c4
:pswitch_28b
move v5, v7
goto/16 :goto_1f8
:pswitch_28e
move v5, v8
goto/16 :goto_1f8
:pswitch_291
move v5, v9
goto/16 :goto_1f8
:pswitch_294
const/16 v5, 0x63
goto/16 :goto_1f8
:cond_298
move v2, v3
goto/16 :goto_1d2
:cond_29b
move v2, v3
goto/16 :goto_19d
:cond_29e
move v2, v3
goto/16 :goto_169
:cond_2a1
move v2, v3
goto/16 :goto_135
:cond_2a4
move v2, v3
goto/16 :goto_101
:cond_2a7
move v2, v3
goto/16 :goto_cd
:cond_2aa
move v2, v3
goto/16 :goto_99
:cond_2ad
move v2, v3
goto/16 :goto_65
:cond_2b0
move v2, v3
goto/16 :goto_32
nop
:pswitch_data_2cc
.packed-switch 0x0
:pswitch_230
:pswitch_233
:pswitch_236
:pswitch_239
.end packed-switch
:pswitch_data_2b4
.packed-switch 0x0
:pswitch_216
:pswitch_219
:pswitch_21c
:pswitch_21f
.end packed-switch
:pswitch_data_2c0
.packed-switch 0x0
:pswitch_223
:pswitch_226
:pswitch_229
:pswitch_22c
.end packed-switch
:pswitch_data_2d8
.packed-switch 0x0
:pswitch_23d
:pswitch_240
:pswitch_243
:pswitch_246
.end packed-switch
:pswitch_data_2f0
.packed-switch 0x0
:pswitch_257
:pswitch_25a
:pswitch_25d
:pswitch_260
.end packed-switch
:pswitch_data_2e4
.packed-switch 0x0
:pswitch_24a
:pswitch_24d
:pswitch_250
:pswitch_253
.end packed-switch
:pswitch_data_2fc
.packed-switch 0x0
:pswitch_264
:pswitch_267
:pswitch_26a
:pswitch_26d
.end packed-switch
:pswitch_data_320
.packed-switch 0x0
:pswitch_28b
:pswitch_28e
:pswitch_291
:pswitch_294
.end packed-switch
:pswitch_data_314
.packed-switch 0x0
:pswitch_27e
:pswitch_281
:pswitch_284
:pswitch_287
.end packed-switch
:pswitch_data_308
.packed-switch 0x0
:pswitch_271
:pswitch_274
:pswitch_277
:pswitch_27a
.end packed-switch
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/telephony/TelephonyManager;Lcom/c/bp;Lcom/c/l;)Ljava/util/List;
.registers 19
sget v11, Lcom/c/ak;->c:I
invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_e
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_1d
:cond_e
sget-object v1, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v2, 0x4
aget-object v1, v1, v2
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
:goto_1c
return-object v1
:cond_1d
invoke-virtual/range {p1 .. p1}, Lcom/c/bp;->b()Z
move-result v12
if-eqz v12, :cond_4c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/aa;->a:[Ljava/lang/String;
const/16 v4, 0x8
aget-object v3, v3, v4
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v3, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_4c
invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v1
if-nez v1, :cond_62
sget-object v1, Lcom/c/aa;->a:[Ljava/lang/String;
const/16 v2, 0x9
aget-object v1, v1, v2
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->d(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
goto :goto_1c
:cond_62
const/4 v3, 0x1
if-eq v1, v3, :cond_68
const/4 v3, 0x2
if-ne v1, v3, :cond_176
:cond_68
const/4 v1, 0x1
move v9, v1
:goto_6a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v7
new-instance v10, Ljava/util/ArrayList;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v13
:cond_7f
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_173
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v8, v1
check-cast v8, Landroid/telephony/NeighboringCellInfo;
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getCid()I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_9b
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getRssi()I
move-result v1
const/16 v2, 0x63
if-ne v1, v2, :cond_ba
:cond_9b
if-eqz v12, :cond_7f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v3, 0x5
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz v11, :cond_7f
:cond_ba
if-eqz v9, :cond_187
if-eqz v12, :cond_d9
:try_start_be
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v3, 0x6
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_d9
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getCid()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
const/4 v3, 0x4
if-lt v2, v3, :cond_f0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
const/16 v3, 0x8
if-le v2, v3, :cond_10d
:cond_f0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v4, 0x2
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Lcom/c/bp;->d(Ljava/lang/String;)V
if-eqz v11, :cond_7f
:cond_10d
const/4 v2, 0x0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x4
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x10
invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x4
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x10
invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v4
new-instance v1, Lcom/c/ak;
new-instance v2, Lcom/c/l;
invoke-virtual/range {p2 .. p2}, Lcom/c/l;->d()I
move-result v14
invoke-virtual/range {p2 .. p2}, Lcom/c/l;->e()I
move-result v15
invoke-direct {v2, v14, v15, v4, v3}, Lcom/c/l;-><init>(IIII)V
const/4 v3, 0x0
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getRssi()I
move-result v4
invoke-static {v4}, Lcom/c/ak;->a(I)I
move-result v4
invoke-direct/range {v1 .. v7}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V
:goto_151
:try_end_151
.catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_151} :catch_17a
invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v12, :cond_171
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v4, 0x7
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_171
if-eqz v11, :cond_7f
:cond_173
move-object v1, v10
goto/16 :goto_1c
:cond_176
const/4 v1, 0x0
move v9, v1
goto/16 :goto_6a
:catch_17a
move-exception v1
sget-object v2, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
move-object/from16 v0, p1
invoke-virtual {v0, v2, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
if-eqz v11, :cond_7f
:cond_187
if-eqz v12, :cond_1a4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/aa;->a:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_1a4
new-instance v1, Lcom/c/ak;
new-instance v2, Lcom/c/l;
invoke-virtual/range {p2 .. p2}, Lcom/c/l;->d()I
move-result v3
invoke-virtual/range {p2 .. p2}, Lcom/c/l;->e()I
move-result v4
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getCid()I
move-result v14
invoke-direct {v2, v3, v4, v14}, Lcom/c/l;-><init>(III)V
const/4 v3, 0x0
invoke-virtual {v8}, Landroid/telephony/NeighboringCellInfo;->getRssi()I
move-result v4
invoke-static {v4}, Lcom/c/ak;->b(I)I
move-result v4
invoke-direct/range {v1 .. v7}, Lcom/c/ak;-><init>(Lcom/c/l;IIJLcom/c/ba;)V
goto :goto_151
.end method