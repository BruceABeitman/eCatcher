.class public Lcom/ibm/icu/impl/data/HolidayBundle_iw_IL;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_iw_IL.java"
.field private static final fContents:[[Ljava/lang/Object;
.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x7
new-array v0, v0, [Lcom/ibm/icu/util/Holiday;
sget-object v1, Lcom/ibm/icu/util/HebrewHoliday;->ROSH_HASHANAH:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v1, v0, v3
sget-object v1, Lcom/ibm/icu/util/HebrewHoliday;->YOM_KIPPUR:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v1, v0, v4
sget-object v1, Lcom/ibm/icu/util/HebrewHoliday;->HANUKKAH:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v1, v0, v5
const/4 v1, 0x3
sget-object v2, Lcom/ibm/icu/util/HebrewHoliday;->PURIM:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/ibm/icu/util/HebrewHoliday;->PASSOVER:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/ibm/icu/util/HebrewHoliday;->SHAVUOT:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/ibm/icu/util/HebrewHoliday;->SELIHOT:Lcom/ibm/icu/util/HebrewHoliday;
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Lcom/ibm/icu/util/Holiday;
new-array v0, v4, [[Ljava/lang/Object;
new-array v1, v5, [Ljava/lang/Object;
const-string v2, "holidays"
aput-object v2, v1, v3
sget-object v2, Lcom/ibm/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Lcom/ibm/icu/util/Holiday;
aput-object v2, v1, v4
aput-object v1, v0, v3
sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V
return-void
.end method
.method public declared-synchronized getContents()[[Ljava/lang/Object;
.registers 2
monitor-enter p0
:try_start_1
sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method