.class public Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;
.super Ljava/lang/Object;
.source "PeriodFormatterData.java"
.field private static final FORM_DUAL:I = 0x2
.field private static final FORM_HALF_SPELLED:I = 0x6
.field private static final FORM_PAUCAL:I = 0x3
.field private static final FORM_PLURAL:I = 0x0
.field private static final FORM_SINGULAR:I = 0x1
.field private static final FORM_SINGULAR_NO_OMIT:I = 0x5
.field private static final FORM_SINGULAR_SPELLED:I = 0x4
.field public static trace:Z
.field final dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
.field  localeName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->trace:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/DataRecord;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;
if-nez p1, :cond_11
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "localename is null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
if-nez p2, :cond_1b
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "data record is null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
return-void
.end method
.method private computeForm(Lcom/ibm/icu/impl/duration/TimeUnit;IIZ)I
.registers 16
const/4 v10, 0x2
const/4 v9, 0x0
const/4 v8, 0x3
const/4 v7, 0x5
const/4 v6, 0x1
sget-boolean v3, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->trace:Z
if-eqz v3, :cond_46
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "pfd.cf unit: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " count: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " cv: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " dr.pl: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->dumpStack()V
:cond_46
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
if-nez v3, :cond_4e
move v3, v9
:goto_4d
return v3
:cond_4e
div-int/lit16 v2, p2, 0x3e8
packed-switch p3, :pswitch_data_15a
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->decimalHandling:B
packed-switch v3, :pswitch_data_164
:pswitch_5a
:cond_5a
move v3, v9
goto :goto_4d
:pswitch_5c
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fractionHandling:B
packed-switch v3, :pswitch_data_170
new-instance v3, Ljava/lang/IllegalStateException;
invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V
throw v3
:pswitch_69
move v3, v9
goto :goto_4d
:pswitch_6b
div-int/lit16 v1, p2, 0x1f4
if-ne v1, v6, :cond_85
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;
if-eqz v3, :cond_83
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;
invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal()I
move-result v4
aget-object v3, v3, v4
if-eqz v3, :cond_83
const/4 v3, 0x6
goto :goto_4d
:cond_83
move v3, v7
goto :goto_4d
:cond_85
and-int/lit8 v3, v1, 0x1
if-ne v3, v6, :cond_bd
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
if-ne v3, v7, :cond_95
const/16 v3, 0x15
if-le v1, v3, :cond_95
move v3, v7
goto :goto_4d
:cond_95
if-ne v1, v8, :cond_bd
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
if-ne v3, v6, :cond_bd
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fractionHandling:B
if-eq v3, v10, :cond_bd
move v3, v9
goto :goto_4d
:pswitch_a5
div-int/lit16 v1, p2, 0x1f4
if-eq v1, v6, :cond_ab
if-ne v1, v8, :cond_bd
:cond_ab
move v3, v8
goto :goto_4d
:pswitch_ad
move v3, v7
goto :goto_4d
:pswitch_af
const/16 v3, 0x3e8
if-ge p2, v3, :cond_5a
move v3, v7
goto :goto_4d
:pswitch_b5
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
if-ne v3, v8, :cond_5a
move v3, v8
goto :goto_4d
:cond_bd
:pswitch_bd
sget-boolean v3, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->trace:Z
if-eqz v3, :cond_df
if-nez p2, :cond_df
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "EZeroHandling = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->zeroHandling:B
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_df
if-nez p2, :cond_ea
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->zeroHandling:B
if-ne v3, v6, :cond_ea
const/4 v3, 0x4
goto/16 :goto_4d
:cond_ea
const/4 v0, 0x0
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
packed-switch v3, :pswitch_data_17c
sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "dr.pl is "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
new-instance v3, Ljava/lang/IllegalStateException;
invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V
throw v3
:pswitch_114
if-ne v2, v6, :cond_117
const/4 v0, 0x4
:pswitch_117
:goto_117
:cond_117
move v3, v0
goto/16 :goto_4d
:pswitch_11a
if-ne v2, v10, :cond_11e
const/4 v0, 0x2
goto :goto_117
:cond_11e
if-ne v2, v6, :cond_117
const/4 v0, 0x1
goto :goto_117
:pswitch_122
move v1, v2
rem-int/lit8 v1, v1, 0x64
const/16 v3, 0x14
if-le v1, v3, :cond_12b
rem-int/lit8 v1, v1, 0xa
:cond_12b
if-ne v1, v6, :cond_12f
const/4 v0, 0x1
goto :goto_117
:cond_12f
if-le v1, v6, :cond_117
if-ge v1, v7, :cond_117
const/4 v0, 0x3
goto :goto_117
:pswitch_135
if-ne v2, v10, :cond_139
const/4 v0, 0x2
goto :goto_117
:cond_139
if-ne v2, v6, :cond_141
if-eqz p4, :cond_13f
const/4 v0, 0x4
goto :goto_117
:cond_13f
const/4 v0, 0x1
goto :goto_117
:cond_141
sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;
if-ne p1, v3, :cond_117
const/16 v3, 0xb
if-le v2, v3, :cond_117
const/4 v0, 0x5
goto :goto_117
:pswitch_14b
if-ne v2, v10, :cond_14f
const/4 v0, 0x2
goto :goto_117
:cond_14f
if-ne v2, v6, :cond_153
const/4 v0, 0x1
goto :goto_117
:cond_153
const/16 v3, 0xa
if-le v2, v3, :cond_117
const/4 v0, 0x5
goto :goto_117
nop
:pswitch_data_170
.packed-switch 0x0
:pswitch_69
:pswitch_6b
:pswitch_6b
:pswitch_a5
.end packed-switch
:pswitch_data_164
.packed-switch 0x0
:pswitch_5a
:pswitch_ad
:pswitch_af
:pswitch_b5
.end packed-switch
:pswitch_data_15a
.packed-switch 0x0
:pswitch_bd
:pswitch_bd
:pswitch_5c
.end packed-switch
:pswitch_data_17c
.packed-switch 0x0
:pswitch_117
:pswitch_114
:pswitch_11a
:pswitch_122
:pswitch_135
:pswitch_14b
.end packed-switch
.end method
.method public allowZero()Z
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->allowZero:Z
return v0
.end method
.method public appendCount(Lcom/ibm/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
.registers 26
const/4 v13, 0x2
move/from16 v0, p5
move v1, v13
if-ne v0, v1, :cond_11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;
if-nez v13, :cond_11
const/16 p5, 0x0
:cond_11
if-nez p2, :cond_2b
if-eqz p3, :cond_2b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;
if-eqz v13, :cond_2b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;
move-object/from16 v0, p9
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_2b
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal()I
move-result v8
packed-switch p5, :pswitch_data_254
const/4 v5, 0x1
packed-switch p5, :pswitch_data_25e
:goto_36
if-nez p2, :cond_44
const/4 v13, 0x1
move-object/from16 v0, p0
move/from16 v1, p4
move v2, v13
move v3, v5
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V
:cond_44
:goto_44
if-nez p2, :cond_55
if-eqz p6, :cond_55
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;
move-object/from16 v0, p9
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_55
if-nez p2, :cond_7b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;
if-eqz v13, :cond_7b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;
array-length v13, v13
if-ge v8, v13, :cond_7b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;
aget-object v9, v13, v8
if-eqz v9, :cond_7b
move-object/from16 v0, p9
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_7b
move-object/from16 v0, p9
move-object/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz p8, :cond_251
move v13, v8
:goto_85
return v13
:pswitch_86
if-nez p2, :cond_44
move/from16 v0, p4
div-int/lit16 v0, v0, 0x3e8
move v13, v0
const/4 v14, 0x1
const/16 v15, 0xa
move-object/from16 v0, p0
move v1, v13
move v2, v14
move v3, v15
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V
goto :goto_44
:pswitch_9b
move/from16 v0, p4
div-int/lit16 v0, v0, 0x3e8
move v12, v0
sget-object v13, Lcom/ibm/icu/impl/duration/TimeUnit;->MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;
move-object/from16 v0, p1
move-object v1, v13
if-ne v0, v1, :cond_11e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;
if-nez v13, :cond_b9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;
if-eqz v13, :cond_11e
:cond_b9
if-eqz v12, :cond_11e
rem-int/lit8 v13, v12, 0x5
if-nez v13, :cond_11e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;
if-eqz v13, :cond_f6
const/16 v13, 0xf
if-eq v12, v13, :cond_d0
const/16 v13, 0x2d
if-ne v12, v13, :cond_f6
:cond_d0
const/16 v13, 0xf
if-ne v12, v13, :cond_f3
const/4 v13, 0x1
move v12, v13
:goto_d6
if-nez p2, :cond_e5
const/4 v13, 0x1
const/16 v14, 0xa
move-object/from16 v0, p0
move v1, v12
move v2, v13
move v3, v14
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V
:cond_e5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
move-object v0, v13
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;
move-object/from16 p7, v0
const/16 v8, 0x8
goto/16 :goto_44
:cond_f3
const/4 v13, 0x3
move v12, v13
goto :goto_d6
:cond_f6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;
if-eqz v13, :cond_11e
div-int/lit8 v12, v12, 0x5
if-nez p2, :cond_110
const/4 v13, 0x1
const/16 v14, 0xa
move-object/from16 v0, p0
move v1, v12
move v2, v13
move v3, v14
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V
:cond_110
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
move-object v0, v13
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;
move-object/from16 p7, v0
const/16 v8, 0x9
goto/16 :goto_44
:cond_11e
if-nez p2, :cond_44
const/4 v13, 0x1
const/16 v14, 0xa
move-object/from16 v0, p0
move v1, v12
move v2, v13
move v3, v14
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V
goto/16 :goto_44
:pswitch_12f
move/from16 v0, p4
div-int/lit16 v0, v0, 0x1f4
move v11, v0
const/4 v13, 0x1
if-eq v11, v13, :cond_146
if-nez p2, :cond_146
const/4 v13, 0x1
const/4 v14, 0x0
move-object/from16 v0, p0
move/from16 v1, p4
move v2, v13
move v3, v14
move-object/from16 v4, p9
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V
:cond_146
and-int/lit8 v13, v11, 0x1
const/4 v14, 0x1
if-ne v13, v14, :cond_44
const/4 v13, 0x1
if-ne v11, v13, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;
if-eqz v13, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;
aget-object v13, v13, v8
if-eqz v13, :cond_171
move-object/from16 v0, p9
move-object/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz p8, :cond_16e
move v13, v8
goto/16 :goto_85
:cond_16e
const/4 v13, -0x1
goto/16 :goto_85
:cond_171
const/4 v13, 0x1
if-ne v11, v13, :cond_1c4
const/4 v13, 0x0
move v10, v13
:goto_176
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->genders:[B
if-eqz v13, :cond_198
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;
array-length v13, v13
const/4 v14, 0x2
if-le v13, v14, :cond_198
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->genders:[B
aget-byte v13, v13, v8
const/4 v14, 0x1
if-ne v13, v14, :cond_198
add-int/lit8 v10, v10, 0x2
:cond_198
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfPlacements:[B
if-nez v13, :cond_1c7
const/4 v13, 0x0
move v7, v13
:goto_1a3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;
aget-object v6, v13, v10
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;
if-nez v13, :cond_1d4
const/4 v13, 0x0
move-object v9, v13
:goto_1b7
packed-switch v7, :pswitch_data_266
goto/16 :goto_44
:pswitch_1bc
move-object/from16 v0, p9
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto/16 :goto_44
:cond_1c4
const/4 v13, 0x1
move v10, v13
goto :goto_176
:cond_1c7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfPlacements:[B
and-int/lit8 v14, v10, 0x1
aget-byte v13, v13, v14
move v7, v13
goto :goto_1a3
:cond_1d4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;
aget-object v13, v13, v8
move-object v9, v13
goto :goto_1b7
:pswitch_1df
if-eqz v9, :cond_208
move-object/from16 v0, p9
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, p9
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz p6, :cond_1fe
if-nez p2, :cond_1fe
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;
move-object/from16 v0, p9
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1fe
move-object/from16 v0, p9
move-object/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v13, -0x1
goto/16 :goto_85
:cond_208
move-object/from16 v0, p9
move-object/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, p9
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz p8, :cond_21a
move v13, v8
goto/16 :goto_85
:cond_21a
const/4 v13, -0x1
goto/16 :goto_85
:pswitch_21d
if-eqz v9, :cond_225
move-object/from16 v0, p9
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_225
if-eqz p6, :cond_236
if-nez p2, :cond_236
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v13, v0
iget-object v13, v13, Lcom/ibm/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;
move-object/from16 v0, p9
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_236
move-object/from16 v0, p9
move-object/from16 v1, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, p9
move-object v1, v6
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz p8, :cond_248
move v13, v8
goto/16 :goto_85
:cond_248
const/4 v13, -0x1
goto/16 :goto_85
:pswitch_24b
const/4 v5, 0x2
goto/16 :goto_36
:pswitch_24e
const/4 v5, 0x3
goto/16 :goto_36
:cond_251
const/4 v13, -0x1
goto/16 :goto_85
:pswitch_data_254
.packed-switch 0x0
:pswitch_86
:pswitch_9b
:pswitch_12f
.end packed-switch
:pswitch_data_266
.packed-switch 0x0
:pswitch_1bc
:pswitch_1df
:pswitch_21d
.end packed-switch
:pswitch_data_25e
.packed-switch 0x4
:pswitch_24b
:pswitch_24e
.end packed-switch
.end method
.method public appendCountValue(IIILjava/lang/StringBuffer;)V
.registers 14
const/16 v8, 0x20
const/16 v4, 0xa
div-int/lit16 v7, p1, 0x3e8
if-nez p3, :cond_c
invoke-virtual {p0, v7, p2, v4, p4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V
:cond_b
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z
if-eqz v0, :cond_1b
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_1b
invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_1b
int-to-long v1, v7
move-object v0, p0
move v3, p2
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V
rem-int/lit16 v6, p1, 0x3e8
const/4 v0, 0x1
if-ne p3, v0, :cond_42
div-int/lit8 v6, v6, 0x64
:cond_29
:goto_29
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-char v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->decimalSep:C
invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
int-to-long v1, v6
move-object v0, p0
move v3, p3
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z
if-eqz v0, :cond_b
invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_b
:cond_42
const/4 v0, 0x2
if-ne p3, v0, :cond_29
div-int/lit8 v6, v6, 0xa
goto :goto_29
.end method
.method public appendDigits(JIILjava/lang/StringBuffer;)V
.registers 15
const-wide/16 v7, 0xa
new-array v0, p4, [C
move v2, p4
:goto_5
if-lez v2, :cond_1d
const-wide/16 v3, 0x0
cmp-long v3, p1, v3
if-lez v3, :cond_1d
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-char v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->zero:C
int-to-long v3, v3
rem-long v5, p1, v7
add-long/2addr v3, v5
long-to-int v3, v3
int-to-char v3, v3
aput-char v3, v0, v2
div-long/2addr p1, v7
goto :goto_5
:cond_1d
sub-int v1, p4, p3
:goto_1f
if-le v2, v1, :cond_2a
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-char v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->zero:C
aput-char v3, v0, v2
goto :goto_1f
:cond_2a
sub-int v3, p4, v2
invoke-virtual {p5, v0, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
return-void
.end method
.method public appendInteger(IIILjava/lang/StringBuffer;)V
.registers 13
const/16 v7, 0x20
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;
array-length v0, v0
if-ge p1, v0, :cond_1b
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;
aget-object v6, v0, p1
if-eqz v6, :cond_1b
invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_1a
:cond_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z
if-eqz v0, :cond_2a
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_2a
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_2a
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->numberSystem:B
packed-switch v0, :pswitch_data_66
:goto_31
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z
if-eqz v0, :cond_1a
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_1a
:pswitch_3b
int-to-long v1, p1
move-object v0, p0
move v3, p2
move v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V
goto :goto_31
:pswitch_44
int-to-long v0, p1
sget-object v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/duration/impl/Utils;->chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_31
:pswitch_4f
int-to-long v0, p1
sget-object v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/duration/impl/Utils;->chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_31
:pswitch_5a
int-to-long v0, p1
sget-object v2, Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Lcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/duration/impl/Utils;->chineseNumber(JLcom/ibm/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_31
nop
:pswitch_data_66
.packed-switch 0x0
:pswitch_3b
:pswitch_44
:pswitch_4f
:pswitch_5a
.end packed-switch
.end method
.method public appendPrefix(IILjava/lang/StringBuffer;)Z
.registers 8
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->scopeData:[Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
if-eqz v3, :cond_1c
mul-int/lit8 v3, p1, 0x3
add-int v0, v3, p2
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->scopeData:[Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
aget-object v2, v3, v0
if-eqz v2, :cond_1c
iget-object v1, v2, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;
if-eqz v1, :cond_1c
invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v3, v2, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z
:goto_1b
return v3
:cond_1c
const/4 v3, 0x0
goto :goto_1b
.end method
.method public appendSkippedUnit(Ljava/lang/StringBuffer;)V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_d
return-void
.end method
.method public appendSuffix(IILjava/lang/StringBuffer;)V
.registers 10
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->scopeData:[Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
if-eqz v3, :cond_3b
mul-int/lit8 v3, p1, 0x3
add-int v0, v3, p2
iget-object v3, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v3, v3, Lcom/ibm/icu/impl/duration/impl/DataRecord;->scopeData:[Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
aget-object v1, v3, v0
if-eqz v1, :cond_3b
iget-object v2, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;
if-eqz v2, :cond_3b
sget-boolean v3, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->trace:Z
if-eqz v3, :cond_38
sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "appendSuffix \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_38
invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_3b
return-void
.end method
.method public appendUnit(Lcom/ibm/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z
.registers 34
invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal()I
move-result v18
const/16 v22, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z
if-eqz v5, :cond_36
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z
aget-boolean v5, v5, v18
if-eqz v5, :cond_36
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;
if-eqz v5, :cond_36
if-nez p9, :cond_34
if-eqz p8, :cond_34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;
move-object/from16 v0, p10
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_34
const/16 v22, 0x1
:cond_36
if-eqz p4, :cond_92
const/4 v5, 0x1
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_7a
const/4 v5, 0x1
move/from16 v21, v5
:goto_41
if-eqz v21, :cond_7e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;
move-object/from16 v17, v5
:goto_4c
if-eqz v17, :cond_52
aget-object v5, v17, v18
if-nez v5, :cond_5d
:cond_52
if-eqz v21, :cond_88
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;
move-object/from16 v17, v5
:goto_5d
:cond_5d
if-eqz v17, :cond_92
aget-object v5, v17, v18
if-eqz v5, :cond_92
const/4 v7, 0x0
const/4 v8, 0x0
aget-object v12, v17, v18
move-object/from16 v5, p0
move-object/from16 v6, p1
move/from16 v9, p2
move/from16 v10, p3
move/from16 v11, p5
move/from16 v13, p8
move-object/from16 v14, p10
invoke-virtual/range {v5 .. v14}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Lcom/ibm/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
const/4 v5, 0x0
:goto_79
return v5
:cond_7a
const/4 v5, 0x0
move/from16 v21, v5
goto :goto_41
:cond_7e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;
move-object/from16 v17, v5
goto :goto_4c
:cond_88
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;
move-object/from16 v17, v5
goto :goto_5d
:cond_92
const/4 v5, 0x2
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_ad
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfSupport:[B
if-eqz v5, :cond_ad
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfSupport:[B
aget-byte v5, v5, v18
packed-switch v5, :pswitch_data_222
:pswitch_ad
:cond_ad
:goto_ad
const/4 v12, 0x0
if-eqz p7, :cond_193
if-eqz p8, :cond_193
const/4 v5, 0x1
:goto_b3
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, p2
move/from16 v3, p3
move v4, v5
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->computeForm(Lcom/ibm/icu/impl/duration/TimeUnit;IIZ)I
move-result v16
const/4 v5, 0x4
move/from16 v0, v16
move v1, v5
if-ne v0, v1, :cond_1a1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;
if-nez v5, :cond_196
const/16 v16, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;
aget-object v5, v5, v18
aget-object v12, v5, v16
:goto_dc
if-nez v12, :cond_eb
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;
aget-object v5, v5, v18
aget-object v12, v5, v16
:cond_eb
const/4 v5, 0x4
move/from16 v0, v16
move v1, v5
if-eq v0, v1, :cond_115
const/4 v5, 0x6
move/from16 v0, v16
move v1, v5
if-eq v0, v1, :cond_115
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-boolean v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z
if-eqz v5, :cond_106
const/4 v5, 0x1
move/from16 v0, v16
move v1, v5
if-eq v0, v1, :cond_115
:cond_106
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-boolean v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->omitDualCount:Z
if-eqz v5, :cond_21e
const/4 v5, 0x2
move/from16 v0, v16
move v1, v5
if-ne v0, v1, :cond_21e
:cond_115
const/4 v5, 0x1
move v7, v5
:goto_117
move-object/from16 v5, p0
move-object/from16 v6, p1
move/from16 v8, p6
move/from16 v9, p2
move/from16 v10, p3
move/from16 v11, p5
move/from16 v13, p8
move-object/from16 v14, p10
invoke-virtual/range {v5 .. v14}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Lcom/ibm/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
move-result v20
if-eqz p8, :cond_17a
if-ltz v20, :cond_17a
const/16 v19, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;
if-eqz v5, :cond_150
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;
array-length v5, v5
move/from16 v0, v20
move v1, v5
if-ge v0, v1, :cond_150
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;
aget-object v19, v5, v20
:cond_150
if-nez v19, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;
if-eqz v5, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;
array-length v5, v5
move/from16 v0, v20
move v1, v5
if-ge v0, v1, :cond_171
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;
aget-object v19, v5, v20
:cond_171
if-eqz v19, :cond_17a
move-object/from16 v0, p10
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17a
move/from16 v5, v22
goto/16 :goto_79
:pswitch_17e
const/16 v5, 0x3e8
move/from16 v0, p2
move v1, v5
if-gt v0, v1, :cond_ad
:pswitch_185
move/from16 v0, p2
div-int/lit16 v0, v0, 0x1f4
move v5, v0
move v0, v5
mul-int/lit16 v0, v0, 0x1f4
move/from16 p2, v0
const/16 p3, 0x3
goto/16 :goto_ad
:cond_193
const/4 v5, 0x0
goto/16 :goto_b3
:cond_196
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;
aget-object v12, v5, v18
goto/16 :goto_dc
:cond_1a1
const/4 v5, 0x5
move/from16 v0, v16
move v1, v5
if-ne v0, v1, :cond_1b5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;
aget-object v5, v5, v18
const/4 v6, 0x1
aget-object v12, v5, v6
goto/16 :goto_dc
:cond_1b5
const/4 v5, 0x6
move/from16 v0, v16
move v1, v5
if-ne v0, v1, :cond_1c6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;
aget-object v12, v5, v18
goto/16 :goto_dc
:try_start_1c6
:cond_1c6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;
aget-object v5, v5, v18
aget-object v12, v5, v16
:try_end_1d1
.catch Ljava/lang/NullPointerException; {:try_start_1c6 .. :try_end_1d1} :catch_1d3
goto/16 :goto_dc
:catch_1d3
move-exception v5
move-object v15, v5
sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Null Pointer in PeriodFormatterData["
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;
move-object v7, v0
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "].au px: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object v0, v6
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " form: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object v0, v6
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " pn: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
move-object v7, v0
iget-object v7, v7, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
throw v15
:cond_21e
const/4 v5, 0x0
move v7, v5
goto/16 :goto_117
:pswitch_data_222
.packed-switch 0x0
:pswitch_ad
:pswitch_185
:pswitch_17e
.end packed-switch
.end method
.method public appendUnitSeparator(Lcom/ibm/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z
.registers 11
const/4 v4, 0x1
const/4 v3, 0x0
if-eqz p2, :cond_a
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;
if-nez v1, :cond_10
:cond_a
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;
if-eqz v1, :cond_46
:cond_10
if-eqz p2, :cond_3f
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;
if-eqz v1, :cond_3f
if-eqz p3, :cond_39
const/4 v1, 0x2
:goto_1b
if-eqz p4, :cond_3b
move v2, v4
:goto_1e
add-int v0, v1, v2
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z
if-eqz v1, :cond_3d
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z
aget-boolean v1, v1, v0
if-eqz v1, :cond_3d
move v1, v4
:goto_38
return v1
:cond_39
move v1, v3
goto :goto_1b
:cond_3b
move v2, v3
goto :goto_1e
:cond_3d
move v1, v3
goto :goto_38
:cond_3f
iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-object v1, v1, Lcom/ibm/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;
invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_46
move v1, v3
goto :goto_38
.end method
.method public pluralization()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->pl:B
return v0
.end method
.method public useMilliseconds()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-byte v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->useMilliseconds:B
return v0
.end method
.method public weeksAloneOnly()Z
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->dr:Lcom/ibm/icu/impl/duration/impl/DataRecord;
iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z
return v0
.end method