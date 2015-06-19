.class public Lcom/ibm/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"
.implements Lcom/ibm/icu/util/DateRule;
.field private static gCalendar:Lcom/ibm/icu/util/GregorianCalendar;
.field private calendar:Lcom/ibm/icu/util/Calendar;
.field private dayOfMonth:I
.field private dayOfWeek:I
.field private month:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;
invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V
sput-object v0, Lcom/ibm/icu/util/SimpleDateRule;->gCalendar:Lcom/ibm/icu/util/GregorianCalendar;
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ibm/icu/util/SimpleDateRule;->gCalendar:Lcom/ibm/icu/util/GregorianCalendar;
iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
return-void
.end method
.method public constructor <init>(IIIZ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ibm/icu/util/SimpleDateRule;->gCalendar:Lcom/ibm/icu/util/GregorianCalendar;
iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I
if-eqz p4, :cond_11
move v0, p3
:goto_e
iput v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
return-void
:cond_11
neg-int v0, p3
goto :goto_e
.end method
.method constructor <init>(IILcom/ibm/icu/util/Calendar;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ibm/icu/util/SimpleDateRule;->gCalendar:Lcom/ibm/icu/util/GregorianCalendar;
iput-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
iput p1, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
iput p2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
iput-object p3, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
return-void
.end method
.method private computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;
.registers 7
monitor-enter p2
:try_start_1
invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->clear()V
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {p2, v3}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v3
invoke-virtual {p2, v2, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v2, 0x1
invoke-virtual {p2, v2, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v2, 0x2
iget v3, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
invoke-virtual {p2, v2, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v2, 0x5
iget v3, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfMonth:I
invoke-virtual {p2, v2, v3}, Lcom/ibm/icu/util/Calendar;->set(II)V
iget v2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
if-eqz v2, :cond_3d
invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v2
invoke-virtual {p2, v2}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
const/4 v2, 0x7
invoke-virtual {p2, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v1
const/4 v0, 0x0
iget v2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
if-lez v2, :cond_43
iget v2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
sub-int/2addr v2, v1
add-int/lit8 v2, v2, 0x7
rem-int/lit8 v0, v2, 0x7
:goto_39
const/4 v2, 0x5
invoke-virtual {p2, v2, v0}, Lcom/ibm/icu/util/Calendar;->add(II)V
:cond_3d
invoke-virtual {p2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v2
monitor-exit p2
return-object v2
:cond_43
iget v2, p0, Lcom/ibm/icu/util/SimpleDateRule;->dayOfWeek:I
add-int/2addr v2, v1
add-int/lit8 v2, v2, 0x7
rem-int/lit8 v2, v2, 0x7
neg-int v0, v2
goto :goto_39
:catchall_4c
move-exception v2
monitor-exit p2
:try_end_4e
.catchall {:try_start_1 .. :try_end_4e} :catchall_4c
throw v2
.end method
.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
.registers 8
iget-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
monitor-enter v0
:try_start_3
invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
const/4 v4, 0x1
invoke-virtual {v0, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v3
const/4 v4, 0x2
invoke-virtual {v0, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v1
iget v4, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
if-le v1, v4, :cond_16
add-int/lit8 v3, v3, 0x1
:cond_16
invoke-direct {p0, v3, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;
move-result-object v2
iget v4, p0, Lcom/ibm/icu/util/SimpleDateRule;->month:I
if-ne v1, v4, :cond_2a
invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v4
if-eqz v4, :cond_2a
add-int/lit8 v4, v3, 0x1
invoke-direct {p0, v4, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;
move-result-object v2
:cond_2a
if-eqz p2, :cond_35
invoke-virtual {v2, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v4
if-eqz v4, :cond_35
const/4 v4, 0x0
monitor-exit v0
:goto_34
return-object v4
:cond_35
monitor-exit v0
move-object v4, v2
goto :goto_34
:catchall_38
move-exception v4
monitor-exit v0
:try_end_3a
.catchall {:try_start_3 .. :try_end_3a} :catchall_38
throw v4
.end method
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isOn(Ljava/util/Date;)Z
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/ibm/icu/util/SimpleDateRule;->calendar:Lcom/ibm/icu/util/Calendar;
monitor-enter v0
:try_start_4
invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
const/4 v2, 0x6
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v1
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v2
invoke-direct {p0, v2, v0}, Lcom/ibm/icu/util/SimpleDateRule;->computeInYear(ILcom/ibm/icu/util/Calendar;)Ljava/util/Date;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
const/4 v2, 0x6
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v2
if-ne v2, v1, :cond_22
move v2, v3
:goto_20
monitor-exit v0
return v2
:cond_22
const/4 v2, 0x0
goto :goto_20
:catchall_24
move-exception v2
monitor-exit v0
:try_end_26
.catchall {:try_start_4 .. :try_end_26} :catchall_24
throw v2
.end method