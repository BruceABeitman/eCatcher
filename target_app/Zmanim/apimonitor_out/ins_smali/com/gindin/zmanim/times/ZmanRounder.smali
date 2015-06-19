.class public Lcom/gindin/zmanim/times/ZmanRounder;
.super Ljava/lang/Object;
.source "ZmanRounder.java"
.field private static final scratchCalendar:Ljava/util/Calendar;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
sput-object v0, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public roundToEarliestMinute(Ljava/util/Date;)Ljava/util/Date;
.registers 6
sget-object v0, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
const/16 v2, 0xd
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
const/16 v2, 0xe
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v1
monitor-exit v0
return-object v1
:catchall_20
move-exception v1
monitor-exit v0
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_20
throw v1
.end method
.method public roundToLatestMinute(Ljava/util/Date;)Ljava/util/Date;
.registers 6
sget-object v0, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
const/16 v2, 0xc
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
const/16 v2, 0xd
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
const/16 v2, 0xe
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V
sget-object v1, Lcom/gindin/zmanim/times/ZmanRounder;->scratchCalendar:Ljava/util/Calendar;
invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v1
monitor-exit v0
return-object v1
:catchall_28
move-exception v1
monitor-exit v0
:try_end_2a
.catchall {:try_start_3 .. :try_end_2a} :catchall_28
throw v1
.end method