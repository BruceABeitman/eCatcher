.class  Lcom/glympse/android/hal/ar;
.super Ljava/lang/Object;
.source "LocalContactsProvider.java"
.implements Ljava/lang/Runnable;
.field private final EMAIL_TYPE:I
.field private final PHONE_TYPE:I
.field private bU:Lcom/glympse/android/hal/GVector;
.field private bY:Lcom/glympse/android/hal/ao;
.method public constructor <init>(Lcom/glympse/android/hal/ao;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/hal/ar;->PHONE_TYPE:I
const/4 v0, 0x1
iput v0, p0, Lcom/glympse/android/hal/ar;->EMAIL_TYPE:I
iput-object p1, p0, Lcom/glympse/android/hal/ar;->bY:Lcom/glympse/android/hal/ao;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method private a(II)Ljava/lang/String;
.registers 4
packed-switch p1, :pswitch_data_5a
:goto_3
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
packed-switch p2, :pswitch_data_62
:pswitch_8
packed-switch p2, :pswitch_data_90
goto :goto_3
:pswitch_c
const-string v0, "custom"
goto :goto_4
:pswitch_f
const-string v0, "custom"
goto :goto_4
:pswitch_12
const-string v0, "home"
goto :goto_4
:pswitch_15
const-string v0, "mobile"
goto :goto_4
:pswitch_18
const-string v0, "work"
goto :goto_4
:pswitch_1b
const-string v0, "work fax"
goto :goto_4
:pswitch_1e
const-string v0, "home fax"
goto :goto_4
:pswitch_21
const-string v0, "pager"
goto :goto_4
:pswitch_24
const-string v0, "other"
goto :goto_4
:pswitch_27
const-string v0, "callback"
goto :goto_4
:pswitch_2a
const-string v0, "car"
goto :goto_4
:pswitch_2d
const-string v0, "company main"
goto :goto_4
:pswitch_30
const-string v0, "ISDN"
goto :goto_4
:pswitch_33
const-string v0, "main"
goto :goto_4
:pswitch_36
const-string v0, "other fax"
goto :goto_4
:pswitch_39
const-string v0, "radio"
goto :goto_4
:pswitch_3c
const-string v0, "telex"
goto :goto_4
:pswitch_3f
const-string v0, "TTY/TDD"
goto :goto_4
:pswitch_42
const-string v0, "work mobile"
goto :goto_4
:pswitch_45
const-string v0, "work pager"
goto :goto_4
:pswitch_48
const-string v0, "assistant"
goto :goto_4
:pswitch_4b
const-string v0, "MMS"
goto :goto_4
:pswitch_4e
const-string v0, "home"
goto :goto_4
:pswitch_51
const-string v0, "work"
goto :goto_4
:pswitch_54
const-string v0, "other"
goto :goto_4
:pswitch_57
const-string v0, "mobile"
goto :goto_4
:pswitch_data_5a
.packed-switch 0x0
:pswitch_5
:pswitch_8
.end packed-switch
:pswitch_data_62
.packed-switch 0x0
:pswitch_f
:pswitch_12
:pswitch_15
:pswitch_18
:pswitch_1b
:pswitch_1e
:pswitch_21
:pswitch_24
:pswitch_27
:pswitch_2a
:pswitch_2d
:pswitch_30
:pswitch_33
:pswitch_36
:pswitch_39
:pswitch_3c
:pswitch_3f
:pswitch_42
:pswitch_45
:pswitch_48
:pswitch_4b
.end packed-switch
:pswitch_data_90
.packed-switch 0x0
:pswitch_c
:pswitch_4e
:pswitch_51
:pswitch_54
:pswitch_57
.end packed-switch
.end method
.method private z()V
.registers 31
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/hal/ar;->bY:Lcom/glympse/android/hal/ao;
iget-object v2, v2, Lcom/glympse/android/hal/ao;->e:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const/4 v10, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
:try_start_d
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v3
if-nez v3, :cond_289
sget-object v3, Lcom/glympse/android/hal/s;->ay:Landroid/net/Uri;
sget-object v4, Lcom/glympse/android/hal/s;->at:[Ljava/lang/String;
const/4 v5, 0x0
const/4 v6, 0x0
sget-object v7, Lcom/glympse/android/hal/s;->aD:Ljava/lang/String;
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_1e
.catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_22e
move-result-object v24
:goto_1f
:try_start_1f
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v3
if-nez v3, :cond_285
sget-object v3, Lcom/glympse/android/hal/s;->az:Landroid/net/Uri;
sget-object v4, Lcom/glympse/android/hal/s;->av:[Ljava/lang/String;
sget-object v5, Lcom/glympse/android/hal/s;->aE:Ljava/lang/String;
const/4 v6, 0x0
sget-object v7, Lcom/glympse/android/hal/s;->aG:Ljava/lang/String;
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_31
.catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_31} :catch_264
move-result-object v23
:goto_32
:try_start_32
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v3
if-nez v3, :cond_281
sget-object v3, Lcom/glympse/android/hal/s;->aA:Landroid/net/Uri;
sget-object v4, Lcom/glympse/android/hal/s;->ax:[Ljava/lang/String;
sget-object v5, Lcom/glympse/android/hal/s;->aH:Ljava/lang/String;
const/4 v6, 0x0
sget-object v7, Lcom/glympse/android/hal/s;->aJ:Ljava/lang/String;
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_44
.catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_44} :catch_26a
move-result-object v22
:goto_45
const/4 v15, 0x0
const v14, 0x7fffffff
const v10, 0x7fffffff
const v9, 0x7fffffff
const/4 v13, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
if-nez v23, :cond_163
const/4 v4, 0x0
:goto_5d
if-nez v24, :cond_169
const/4 v3, 0x0
:goto_60
if-nez v22, :cond_16f
const/4 v2, 0x0
move/from16 v29, v2
move v2, v3
move v3, v4
move-object v4, v5
move-object v5, v7
move-object v7, v8
move v8, v9
move v9, v10
move v10, v14
move-object v14, v15
move/from16 v15, v29
:goto_70
move-object/from16 v19, v4
move/from16 v21, v9
move v9, v3
move v3, v2
:goto_76
if-nez v9, :cond_7c
if-nez v3, :cond_7c
if-eqz v15, :cond_23c
:cond_7c
:try_start_7c
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v2
if-nez v2, :cond_23c
if-eqz v9, :cond_ae
if-nez v13, :cond_ae
const/4 v2, 0x0
move-object/from16 v0, v23
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v10
const/4 v2, 0x1
move-object/from16 v0, v23
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const/4 v2, 0x2
move-object/from16 v0, v23
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
const/4 v2, 0x3
move-object/from16 v0, v23
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
:cond_ae
if-eqz v3, :cond_da
if-nez v7, :cond_da
const/4 v2, 0x0
move-object/from16 v0, v24
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v21
const/4 v2, 0x1
move-object/from16 v0, v24
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const/4 v2, 0x2
move-object/from16 v0, v24
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const/4 v2, 0x3
move-object/from16 v0, v24
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
:cond_da
if-eqz v15, :cond_27d
if-nez v19, :cond_27d
const/4 v2, 0x0
move-object/from16 v0, v22
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v8
const/4 v2, 0x1
move-object/from16 v0, v22
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const/4 v2, 0x2
move-object/from16 v0, v22
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const/4 v2, 0x3
move-object/from16 v0, v22
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move/from16 v16, v8
:goto_108
if-eqz v3, :cond_182
move/from16 v0, v21
if-gt v0, v10, :cond_182
move/from16 v0, v21
move/from16 v1, v16
if-gt v0, v1, :cond_182
if-eqz v14, :cond_123
invoke-interface {v14}, Lcom/glympse/android/lib/GPerson;->getId()J
move-result-wide v2
move/from16 v0, v21
int-to-long v0, v0
move-wide/from16 v25, v0
cmp-long v2, v2, v25
if-eqz v2, :cond_134
:cond_123
move-object/from16 v0, p0
iget-object v14, v0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
new-instance v2, Lcom/glympse/android/lib/PersonLocal;
move/from16 v0, v21
int-to-long v3, v0
const/4 v8, 0x0
invoke-direct/range {v2 .. v8}, Lcom/glympse/android/lib/PersonLocal;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v14, v2}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
move-object v14, v2
:cond_134
const/4 v2, 0x0
const/4 v3, 0x4
move-object/from16 v0, v24
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
move-object/from16 v0, p0
invoke-direct {v0, v2, v3}, Lcom/glympse/android/hal/ar;->a(II)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x6
move-object/from16 v0, v24
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_157
new-instance v4, Lcom/glympse/android/lib/ContactPhone;
invoke-direct {v4, v2, v3}, Lcom/glympse/android/lib/ContactPhone;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v14, v4}, Lcom/glympse/android/lib/GPerson;->addContact(Lcom/glympse/android/lib/GContact;)V
:cond_157
const v21, 0x7fffffff
const/4 v7, 0x0
invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
move/from16 v8, v16
goto/16 :goto_76
:cond_163
invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
goto/16 :goto_5d
:cond_169
invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z
move-result v3
goto/16 :goto_60
:cond_16f
invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
move/from16 v29, v2
move v2, v3
move v3, v4
move-object v4, v5
move-object v5, v7
move-object v7, v8
move v8, v9
move v9, v10
move v10, v14
move-object v14, v15
move/from16 v15, v29
goto/16 :goto_70
:cond_182
if-eqz v9, :cond_1d7
move/from16 v0, v21
if-gt v10, v0, :cond_1d7
move/from16 v0, v16
if-gt v10, v0, :cond_1d7
if-eqz v14, :cond_199
invoke-interface {v14}, Lcom/glympse/android/lib/GPerson;->getId()J
move-result-wide v8
int-to-long v0, v10
move-wide/from16 v25, v0
cmp-long v2, v8, v25
if-eqz v2, :cond_1a8
:cond_199
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
new-instance v8, Lcom/glympse/android/lib/PersonLocal;
int-to-long v9, v10
const/4 v14, 0x0
invoke-direct/range {v8 .. v14}, Lcom/glympse/android/lib/PersonLocal;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2, v8}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
move-object v14, v8
:cond_1a8
const/4 v2, 0x1
const/4 v4, 0x4
move-object/from16 v0, v23
invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
move-object/from16 v0, p0
invoke-direct {v0, v2, v4}, Lcom/glympse/android/hal/ar;->a(II)Ljava/lang/String;
move-result-object v2
const/4 v4, 0x6
move-object/from16 v0, v23
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_1cb
new-instance v8, Lcom/glympse/android/lib/ContactEmail;
invoke-direct {v8, v2, v4}, Lcom/glympse/android/lib/ContactEmail;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v14, v8}, Lcom/glympse/android/lib/GPerson;->addContact(Lcom/glympse/android/lib/GContact;)V
:cond_1cb
const v10, 0x7fffffff
const/4 v13, 0x0
invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z
move-result v9
move/from16 v8, v16
goto/16 :goto_76
:cond_1d7
if-eqz v15, :cond_279
move/from16 v0, v16
move/from16 v1, v21
if-gt v0, v1, :cond_279
move/from16 v0, v16
if-gt v0, v10, :cond_279
if-eqz v14, :cond_1f2
invoke-interface {v14}, Lcom/glympse/android/lib/GPerson;->getId()J
move-result-wide v25
move/from16 v0, v16
int-to-long v0, v0
move-wide/from16 v27, v0
cmp-long v2, v25, v27
if-eqz v2, :cond_203
:cond_1f2
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
new-instance v14, Lcom/glympse/android/lib/PersonLocal;
move/from16 v0, v16
int-to-long v15, v0
const/16 v20, 0x0
invoke-direct/range {v14 .. v20}, Lcom/glympse/android/lib/PersonLocal;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2, v14}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
:cond_203
const/4 v2, 0x5
move-object/from16 v0, v22
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v4, 0x6
move-object/from16 v0, v22
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_21f
new-instance v8, Lcom/glympse/android/lib/ContactPostal;
invoke-direct {v8, v2, v4}, Lcom/glympse/android/lib/ContactPostal;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v14, v8}, Lcom/glympse/android/lib/GPerson;->addContact(Lcom/glympse/android/lib/GContact;)V
:cond_21f
const v8, 0x7fffffff
const/4 v4, 0x0
invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
:try_end_226
.catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_226} :catch_271
move-result v2
move v15, v2
move v2, v3
move v3, v9
move/from16 v9, v21
goto/16 :goto_70
:catch_22e
move-exception v2
move-object v3, v8
move-object v4, v9
move-object v5, v10
:goto_232
const/4 v6, 0x0
invoke-static {v2, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
move-object/from16 v22, v3
move-object/from16 v23, v4
move-object/from16 v24, v5
:cond_23c
if-eqz v24, :cond_241
invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
:cond_241
if-eqz v23, :cond_246
invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
:cond_246
if-eqz v22, :cond_24b
invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
:cond_24b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->length()I
move-result v2
const/4 v3, 0x1
if-le v2, v3, :cond_263
move-object/from16 v0, p0
iget-object v2, v0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
new-instance v3, Lcom/glympse/android/hal/as;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/glympse/android/hal/as;-><init>(Lcom/glympse/android/hal/ao$1;)V
invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_263
return-void
:catch_264
move-exception v2
move-object v3, v8
move-object v4, v9
move-object/from16 v5, v24
goto :goto_232
:catch_26a
move-exception v2
move-object v3, v8
move-object/from16 v4, v23
move-object/from16 v5, v24
goto :goto_232
:catch_271
move-exception v2
move-object/from16 v3, v22
move-object/from16 v4, v23
move-object/from16 v5, v24
goto :goto_232
:cond_279
move/from16 v8, v16
goto/16 :goto_76
:cond_27d
move/from16 v16, v8
goto/16 :goto_108
:cond_281
move-object/from16 v22, v8
goto/16 :goto_45
:cond_285
move-object/from16 v23, v9
goto/16 :goto_32
:cond_289
move-object/from16 v24, v10
goto/16 :goto_1f
.end method
.method public run()V
.registers 5
invoke-direct {p0}, Lcom/glympse/android/hal/ar;->z()V
iget-object v0, p0, Lcom/glympse/android/hal/ar;->bY:Lcom/glympse/android/hal/ao;
invoke-static {v0}, Lcom/glympse/android/hal/ao;->a(Lcom/glympse/android/hal/ao;)Lcom/glympse/android/core/GHandler;
move-result-object v0
new-instance v1, Lcom/glympse/android/hal/aq;
iget-object v2, p0, Lcom/glympse/android/hal/ar;->bY:Lcom/glympse/android/hal/ao;
iget-object v3, p0, Lcom/glympse/android/hal/ar;->bU:Lcom/glympse/android/hal/GVector;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/hal/aq;-><init>(Lcom/glympse/android/hal/ao;Lcom/glympse/android/hal/GVector;)V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
return-void
.end method