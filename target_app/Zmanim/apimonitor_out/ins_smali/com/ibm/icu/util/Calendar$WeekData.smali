.class  Lcom/ibm/icu/util/Calendar$WeekData;
.super Ljava/lang/Object;
.source "Calendar.java"
.field public actualLocale:Lcom/ibm/icu/util/ULocale;
.field public firstDayOfWeek:I
.field public minimalDaysInFirstWeek:I
.field public weekendCease:I
.field public weekendCeaseMillis:I
.field public weekendOnset:I
.field public weekendOnsetMillis:I
.method public constructor <init>(IIIIIILcom/ibm/icu/util/ULocale;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I
iput p2, p0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I
iput-object p7, p0, Lcom/ibm/icu/util/Calendar$WeekData;->actualLocale:Lcom/ibm/icu/util/ULocale;
iput p3, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I
iput p4, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I
iput p5, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I
iput p6, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I
return-void
.end method