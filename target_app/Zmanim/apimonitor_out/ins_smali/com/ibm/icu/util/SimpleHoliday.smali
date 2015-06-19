.class public Lcom/ibm/icu/util/SimpleHoliday;
.super Lcom/ibm/icu/util/Holiday;
.source "SimpleHoliday.java"
.field public static final ALL_SAINTS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final ALL_SOULS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final ASSUMPTION:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final BOXING_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final CHRISTMAS_EVE:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final EPIPHANY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final IMMACULATE_CONCEPTION:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final MAY_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final NEW_YEARS_EVE:Lcom/ibm/icu/util/SimpleHoliday;
.field public static final ST_STEPHENS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
.method static constructor <clinit>()V
.registers 8
const/16 v7, 0x1a
const/16 v6, 0xa
const/4 v3, 0x0
const/4 v5, 0x1
const/16 v4, 0xb
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const-string v1, "New Year\'s Day"
invoke-direct {v0, v3, v5, v1}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/4 v1, 0x6
const-string v2, "Epiphany"
invoke-direct {v0, v3, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->EPIPHANY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/4 v1, 0x4
const-string v2, "May Day"
invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->MAY_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/4 v1, 0x7
const/16 v2, 0xf
const-string v3, "Assumption"
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->ASSUMPTION:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const-string v1, "All Saints\' Day"
invoke-direct {v0, v6, v5, v1}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/4 v1, 0x2
const-string v2, "All Souls\' Day"
invoke-direct {v0, v6, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->ALL_SOULS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/16 v1, 0x8
const-string v2, "Immaculate Conception"
invoke-direct {v0, v4, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/16 v1, 0x18
const-string v2, "Christmas Eve"
invoke-direct {v0, v4, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/16 v1, 0x19
const-string v2, "Christmas"
invoke-direct {v0, v4, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const-string v1, "Boxing Day"
invoke-direct {v0, v4, v7, v1}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->BOXING_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const-string v1, "St. Stephen\'s Day"
invoke-direct {v0, v4, v7, v1}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Lcom/ibm/icu/util/SimpleHoliday;
new-instance v0, Lcom/ibm/icu/util/SimpleHoliday;
const/16 v1, 0x1f
const-string v2, "New Year\'s Eve"
invoke-direct {v0, v4, v1, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Lcom/ibm/icu/util/SimpleHoliday;
return-void
.end method
.method public constructor <init>(IIILjava/lang/String;)V
.registers 8
new-instance v0, Lcom/ibm/icu/util/SimpleDateRule;
if-lez p3, :cond_f
move v1, p3
:goto_5
if-lez p3, :cond_11
const/4 v2, 0x1
:goto_8
invoke-direct {v0, p1, p2, v1, v2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(IIIZ)V
invoke-direct {p0, p4, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
:cond_f
neg-int v1, p3
goto :goto_5
:cond_11
const/4 v2, 0x0
goto :goto_8
.end method
.method public constructor <init>(IIILjava/lang/String;I)V
.registers 10
const/4 v3, 0x0
new-instance v0, Lcom/ibm/icu/util/SimpleDateRule;
if-lez p3, :cond_14
move v1, p3
:goto_6
if-lez p3, :cond_16
const/4 v2, 0x1
:goto_9
invoke-direct {v0, p1, p2, v1, v2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(IIIZ)V
invoke-static {p5, v3, v0}, Lcom/ibm/icu/util/SimpleHoliday;->rangeRule(IILcom/ibm/icu/util/DateRule;)Lcom/ibm/icu/util/DateRule;
move-result-object v0
invoke-direct {p0, p4, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
:cond_14
neg-int v1, p3
goto :goto_6
:cond_16
move v2, v3
goto :goto_9
.end method
.method public constructor <init>(IIILjava/lang/String;II)V
.registers 10
new-instance v0, Lcom/ibm/icu/util/SimpleDateRule;
if-lez p3, :cond_13
move v1, p3
:goto_5
if-lez p3, :cond_15
const/4 v2, 0x1
:goto_8
invoke-direct {v0, p1, p2, v1, v2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(IIIZ)V
invoke-static {p5, p6, v0}, Lcom/ibm/icu/util/SimpleHoliday;->rangeRule(IILcom/ibm/icu/util/DateRule;)Lcom/ibm/icu/util/DateRule;
move-result-object v0
invoke-direct {p0, p4, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
:cond_13
neg-int v1, p3
goto :goto_5
:cond_15
const/4 v2, 0x0
goto :goto_8
.end method
.method public constructor <init>(IILjava/lang/String;)V
.registers 5
new-instance v0, Lcom/ibm/icu/util/SimpleDateRule;
invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(II)V
invoke-direct {p0, p3, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
.end method
.method public constructor <init>(IILjava/lang/String;I)V
.registers 7
const/4 v0, 0x0
new-instance v1, Lcom/ibm/icu/util/SimpleDateRule;
invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(II)V
invoke-static {p4, v0, v1}, Lcom/ibm/icu/util/SimpleHoliday;->rangeRule(IILcom/ibm/icu/util/DateRule;)Lcom/ibm/icu/util/DateRule;
move-result-object v0
invoke-direct {p0, p3, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
.end method
.method public constructor <init>(IILjava/lang/String;II)V
.registers 7
new-instance v0, Lcom/ibm/icu/util/SimpleDateRule;
invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(II)V
invoke-static {p4, p5, v0}, Lcom/ibm/icu/util/SimpleHoliday;->rangeRule(IILcom/ibm/icu/util/DateRule;)Lcom/ibm/icu/util/DateRule;
move-result-object v0
invoke-direct {p0, p3, v0}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
return-void
.end method
.method private static rangeRule(IILcom/ibm/icu/util/DateRule;)Lcom/ibm/icu/util/DateRule;
.registers 9
if-nez p0, :cond_6
if-nez p1, :cond_6
move-object v3, p2
:goto_5
return-object v3
:cond_6
new-instance v1, Lcom/ibm/icu/util/RangeDateRule;
invoke-direct {v1}, Lcom/ibm/icu/util/RangeDateRule;-><init>()V
if-eqz p0, :cond_30
new-instance v2, Lcom/ibm/icu/util/GregorianCalendar;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-direct {v2, p0, v3, v4}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V
invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v3
invoke-virtual {v1, v3, p2}, Lcom/ibm/icu/util/RangeDateRule;->add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
:goto_1b
if-eqz p1, :cond_2e
new-instance v3, Lcom/ibm/icu/util/GregorianCalendar;
const/16 v4, 0xb
const/16 v5, 0x1f
invoke-direct {v3, p1, v4, v5}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V
invoke-virtual {v3}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v1, v0, v3}, Lcom/ibm/icu/util/RangeDateRule;->add(Ljava/util/Date;Lcom/ibm/icu/util/DateRule;)V
:cond_2e
move-object v3, v1
goto :goto_5
:cond_30
invoke-virtual {v1, p2}, Lcom/ibm/icu/util/RangeDateRule;->add(Lcom/ibm/icu/util/DateRule;)V
goto :goto_1b
.end method