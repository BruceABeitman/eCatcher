.class public Lcom/facebook/katana/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"
.field public static final AFTER_THIS_MONTH:I = 0x5
.field public static final ANY_TIME:I = 0x64
.field public static final HAPPENING_NOW:I = 0x0
.field public static final IN_PAST:I = -0x1
.field public static final THIS_MONTH:I = 0x4
.field public static final THIS_WEEK:I = 0x3
.field public static final TODAY:I = 0x1
.field public static final TOMORROW:I = 0x2
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final getAge(IJ)I
.registers 5
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0}, Ljava/util/Date;->getYear()I
move-result v1
add-int/lit16 v1, v1, 0x76c
sub-int/2addr v1, p0
return v1
.end method
.method public static final getStringOfTimePeriod(IJLandroid/content/Context;)Ljava/lang/String;
.registers 8
packed-switch p0, :pswitch_data_46
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
const/4 v3, 0x5
sub-int v3, p0, v3
invoke-virtual {v0, v3}, Ljava/util/Date;->setMonth(I)V
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v3, "MMMMM"
invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
:goto_19
return-object v2
:pswitch_1a
const-string v2, ""
goto :goto_19
:pswitch_1d
const v3, 0x7f08016e
invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_19
:pswitch_25
const v3, 0x7f080174
invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_19
:pswitch_2d
const v3, 0x7f080176
invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_19
:pswitch_35
const v3, 0x7f080173
invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_19
:pswitch_3d
const v3, 0x7f080172
invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_19
nop
:pswitch_data_46
.packed-switch -0x1
:pswitch_1a
:pswitch_1d
:pswitch_25
:pswitch_2d
:pswitch_35
:pswitch_3d
.end packed-switch
.end method
.method public static final getTimeAsStringForTimePeriod(Landroid/content/Context;IJ)Ljava/lang/String;
.registers 10
const/16 v5, 0xa01
sparse-switch p1, :sswitch_data_3c
const v1, 0x7f08016d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const v4, 0x10018
invoke-static {p0, p2, p3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p0, p2, p3, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_20
return-object v0
:sswitch_21
const v1, 0x7f080171
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_20
:sswitch_29
invoke-static {p0, p2, p3, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v0
goto :goto_20
:sswitch_2e
const/16 v1, 0xa03
invoke-static {p0, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v0
goto :goto_20
:sswitch_35
const/16 v1, 0x1a
invoke-static {p0, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v0
goto :goto_20
:sswitch_data_3c
.sparse-switch
0x0 -> :sswitch_21
0x1 -> :sswitch_29
0x2 -> :sswitch_29
0x3 -> :sswitch_2e
0x64 -> :sswitch_35
.end sparse-switch
.end method
.method public static final getTimePeriod(J)I
.registers 8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v4, 0x0
move-wide v2, p0
invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(JJJ)I
move-result v0
return v0
.end method
.method public static final getTimePeriod(JJ)I
.registers 10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
move-wide v2, p0
move-wide v4, p2
invoke-static/range {v0 .. v5}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(JJJ)I
move-result v0
return v0
.end method
.method public static final getTimePeriod(JJJ)I
.registers 15
const-wide/16 v7, 0x0
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
sub-long v1, p2, p0
cmp-long v6, p4, v7
if-eqz v6, :cond_1c
cmp-long v6, p2, p0
if-gtz v6, :cond_1c
cmp-long v6, p0, p4
if-gtz v6, :cond_1c
const/4 v6, 0x0
:goto_1b
return v6
:cond_1c
cmp-long v6, v1, v7
if-gez v6, :cond_22
const/4 v6, -0x1
goto :goto_1b
:cond_22
const-wide/32 v6, 0x5265c00
cmp-long v6, v1, v6
if-gez v6, :cond_35
invoke-virtual {v0}, Ljava/util/Date;->getDate()I
move-result v6
invoke-virtual {v3}, Ljava/util/Date;->getDate()I
move-result v7
if-ne v6, v7, :cond_35
const/4 v6, 0x1
goto :goto_1b
:cond_35
const-wide/32 v6, 0xa4cb800
cmp-long v6, v1, v6
if-gez v6, :cond_4c
invoke-virtual {v3}, Ljava/util/Date;->getDay()I
move-result v6
add-int/lit8 v6, v6, 0x1
rem-int/lit8 v6, v6, 0x7
invoke-virtual {v0}, Ljava/util/Date;->getDay()I
move-result v7
if-ne v6, v7, :cond_4c
const/4 v6, 0x2
goto :goto_1b
:cond_4c
invoke-virtual {v0}, Ljava/util/Date;->getDay()I
move-result v6
invoke-virtual {v3}, Ljava/util/Date;->getDay()I
move-result v7
if-lt v6, v7, :cond_5f
const-wide/32 v6, 0x240c8400
cmp-long v6, v1, v6
if-gez v6, :cond_5f
const/4 v6, 0x3
goto :goto_1b
:cond_5f
const-wide/16 v4, 0x2e8
const-wide/16 v6, 0x3e8
mul-long/2addr v4, v6
const-wide/16 v6, 0xe10
mul-long/2addr v4, v6
invoke-virtual {v0}, Ljava/util/Date;->getMonth()I
move-result v6
invoke-virtual {v3}, Ljava/util/Date;->getMonth()I
move-result v7
if-ne v6, v7, :cond_77
cmp-long v6, v1, v4
if-gez v6, :cond_77
const/4 v6, 0x4
goto :goto_1b
:cond_77
invoke-virtual {v0}, Ljava/util/Date;->getMonth()I
move-result v6
add-int/lit8 v6, v6, 0x5
goto :goto_1b
.end method
.method public static final timeInSeconds(IIZ)J
.registers 11
const/16 v5, 0x3b
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getYear()I
move-result v1
if-eqz p2, :cond_f
add-int/lit8 v1, v1, 0x1
:cond_f
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v7
new-instance v0, Ljava/util/Date;
const/16 v4, 0x17
move v2, p0
move v3, p1
move v6, v5
invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V
invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
return-wide v2
.end method