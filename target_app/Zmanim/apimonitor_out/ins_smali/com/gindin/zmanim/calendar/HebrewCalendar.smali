.class public Lcom/gindin/zmanim/calendar/HebrewCalendar;
.super Lcom/ibm/icu/util/HebrewCalendar;
.source "HebrewCalendar.java"
.field private static final HASER_LEAP_LENGTH:I = 0x17f
.field private static final HASER_REGULAR_LENGTH:I = 0x161
.field private static final QESIDRAH_LEAP_LENGTH:I = 0x180
.field private static final QESIDRAH_REGULAR_LENGTH:I = 0x162
.field private static final SHALEM_LEAP_LENGTH:I = 0x181
.field private static final SHALEM_REGULAR_LENGTH:I = 0x163
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>()V
return-void
.end method
.method private getYearType()Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
.registers 5
const/4 v1, 0x6
invoke-virtual {p0, v1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->getActualMaximum(I)I
move-result v0
sparse-switch v0, :sswitch_data_2a
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Illegal year length "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:sswitch_21
sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Haser:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
:goto_23
return-object v1
:sswitch_24
sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Qesidrah:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
goto :goto_23
:sswitch_27
sget-object v1, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->Shalem:Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
goto :goto_23
:sswitch_data_2a
.sparse-switch
0x161 -> :sswitch_21
0x162 -> :sswitch_24
0x163 -> :sswitch_27
0x17f -> :sswitch_21
0x180 -> :sswitch_24
0x181 -> :sswitch_27
.end sparse-switch
.end method
.method public isLeapYear()Z
.registers 3
const/4 v1, 0x6
invoke-virtual {p0, v1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->getActualMaximum(I)I
move-result v0
const/16 v1, 0x163
if-le v0, v1, :cond_b
const/4 v1, 0x1
:goto_a
return v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 6
sget-object v0, Lcom/gindin/zmanim/calendar/JewishHoliday;->JEWISH_HOLIDAYS:[Lcom/gindin/zmanim/calendar/JewishHoliday;
array-length v3, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v3, :cond_21
aget-object v2, v0, v1
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v4
if-eqz v4, :cond_13
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v4
:goto_12
return-object v4
:cond_13
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v4
if-eqz v4, :cond_1e
invoke-static {v2}, Lcom/gindin/zmanim/calendar/JewishHoliday;->createErevOf(Lcom/gindin/zmanim/calendar/JewishHoliday;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v4
goto :goto_12
:cond_1e
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_21
const/4 v4, 0x0
goto :goto_12
.end method
.method public isTodayATaanit()Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 6
sget-object v0, Lcom/gindin/zmanim/calendar/JewishHoliday;->ARBA_TAANIOT:[Lcom/gindin/zmanim/calendar/JewishHoliday;
array-length v3, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v3, :cond_21
aget-object v2, v0, v1
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v4
if-eqz v4, :cond_13
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v4
:goto_12
return-object v4
:cond_13
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v4
if-eqz v4, :cond_1e
invoke-static {v2}, Lcom/gindin/zmanim/calendar/JewishHoliday;->createErevOf(Lcom/gindin/zmanim/calendar/JewishHoliday;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v4
goto :goto_12
:cond_1e
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_21
const/4 v4, 0x0
goto :goto_12
.end method
.method public isTodayInTheOmer()Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 6
sget-object v0, Lcom/gindin/zmanim/calendar/JewishHoliday;->OMER:[Lcom/gindin/zmanim/calendar/JewishHoliday;
array-length v3, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v3, :cond_16
aget-object v2, v0, v1
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v4
if-eqz v4, :cond_13
invoke-virtual {v2, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v4
:goto_12
return-object v4
:cond_13
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_16
const/4 v4, 0x0
goto :goto_12
.end method
.method public isTodayRoshChodesh()Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 9
const/4 v7, 0x0
sget-object v5, Lcom/gindin/zmanim/calendar/HebrewCalendar$1;->$SwitchMap$com$gindin$zmanim$calendar$HebrewCalendar$YearType:[I
invoke-direct {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->getYearType()Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;
move-result-object v6
invoke-virtual {v6}, Lcom/gindin/zmanim/calendar/HebrewCalendar$YearType;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_68
move-object v5, v7
:goto_11
return-object v5
:pswitch_12
sget-object v4, Lcom/gindin/zmanim/calendar/JewishHoliday;->ROSH_CHODESH_HASER:[Lcom/gindin/zmanim/calendar/JewishHoliday;
:goto_14
move-object v0, v4
array-length v2, v0
const/4 v1, 0x0
:goto_17
if-ge v1, v2, :cond_3a
aget-object v3, v0, v1
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v5
if-eqz v5, :cond_2c
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v5
goto :goto_11
:pswitch_26
sget-object v4, Lcom/gindin/zmanim/calendar/JewishHoliday;->ROSH_CHODESH_QESIDRAH:[Lcom/gindin/zmanim/calendar/JewishHoliday;
goto :goto_14
:pswitch_29
sget-object v4, Lcom/gindin/zmanim/calendar/JewishHoliday;->ROSH_CHODESH_SHALEM:[Lcom/gindin/zmanim/calendar/JewishHoliday;
goto :goto_14
:cond_2c
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v5
if-eqz v5, :cond_37
invoke-static {v3}, Lcom/gindin/zmanim/calendar/JewishHoliday;->createErevOf(Lcom/gindin/zmanim/calendar/JewishHoliday;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v5
goto :goto_11
:cond_37
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_3a
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isLeapYear()Z
move-result v5
if-eqz v5, :cond_54
sget-object v4, Lcom/gindin/zmanim/calendar/JewishHoliday;->ROSH_CHODESH_ADAR_LEAP:[Lcom/gindin/zmanim/calendar/JewishHoliday;
:goto_42
move-object v0, v4
array-length v2, v0
const/4 v1, 0x0
:goto_45
if-ge v1, v2, :cond_65
aget-object v3, v0, v1
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v5
if-eqz v5, :cond_57
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v5
goto :goto_11
:cond_54
sget-object v4, Lcom/gindin/zmanim/calendar/JewishHoliday;->ROSH_CHODESH_ADAR_REGULAR:[Lcom/gindin/zmanim/calendar/JewishHoliday;
goto :goto_42
:cond_57
invoke-virtual {v3, p0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v5
if-eqz v5, :cond_62
invoke-static {v3}, Lcom/gindin/zmanim/calendar/JewishHoliday;->createErevOf(Lcom/gindin/zmanim/calendar/JewishHoliday;)Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v5
goto :goto_11
:cond_62
add-int/lit8 v1, v1, 0x1
goto :goto_45
:cond_65
move-object v5, v7
goto :goto_11
nop
:pswitch_data_68
.packed-switch 0x1
:pswitch_12
:pswitch_26
:pswitch_29
.end packed-switch
.end method
.method public showCandlelighting()Z
.registers 4
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/JewishHoliday;->showCandlelighting()Z
move-result v1
:goto_a
return v1
:cond_b
const/4 v1, 0x6
const/4 v2, 0x7
invoke-virtual {p0, v2}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v2
if-ne v1, v2, :cond_15
const/4 v1, 0x1
goto :goto_a
:cond_15
const/4 v1, 0x0
goto :goto_a
.end method
.method public showHavdalah()Z
.registers 6
const/4 v4, 0x7
const/4 v3, 0x1
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v2
if-eqz v2, :cond_1b
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->getTime()Ljava/util/Date;
move-result-object v1
const/4 v2, 0x5
invoke-virtual {p0, v2, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;
move-result-object v2
if-nez v2, :cond_18
const/4 v0, 0x1
:cond_18
invoke-virtual {p0, v1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->setTime(Ljava/util/Date;)V
:cond_1b
if-nez v0, :cond_24
invoke-virtual {p0, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v2
if-ne v4, v2, :cond_25
move v0, v3
:goto_24
:cond_24
return v0
:cond_25
const/4 v2, 0x0
move v0, v2
goto :goto_24
.end method