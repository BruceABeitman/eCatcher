.class  Lcom/ibm/icu/util/Calendar$PatternData;
.super Ljava/lang/Object;
.source "Calendar.java"
.field private overrides:[Ljava/lang/String;
.field private patterns:[Ljava/lang/String;
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
return-void
.end method
.method static synthetic access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->make(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
return-object v0
.end method
.method private getDateTimePattern(I)Ljava/lang/String;
.registers 6
const/16 v1, 0x8
iget-object v2, p0, Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
array-length v2, v2
const/16 v3, 0xd
if-lt v2, v3, :cond_c
add-int/lit8 v2, p1, 0x1
add-int/2addr v1, v2
:cond_c
iget-object v2, p0, Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
aget-object v0, v2, v1
return-object v0
.end method
.method private static make(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
.registers 8
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/ibm/icu/util/Calendar;->access$1000()Lcom/ibm/icu/impl/ICUCache;
move-result-object v4
invoke-interface {v4, v2}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/util/Calendar$PatternData;
if-nez v3, :cond_42
:try_start_25
new-instance v0, Lcom/ibm/icu/impl/CalendarData;
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, p1, v4}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
new-instance v3, Lcom/ibm/icu/util/Calendar$PatternData;
invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarData;->getOverrides()[Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5}, Lcom/ibm/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V
:goto_3b
:try_end_3b
.catch Ljava/util/MissingResourceException; {:try_start_25 .. :try_end_3b} :catch_43
invoke-static {}, Lcom/ibm/icu/util/Calendar;->access$1000()Lcom/ibm/icu/impl/ICUCache;
move-result-object v4
invoke-interface {v4, v2, v3}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_42
return-object v3
:catch_43
move-exception v4
move-object v1, v4
new-instance v3, Lcom/ibm/icu/util/Calendar$PatternData;
invoke-static {}, Lcom/ibm/icu/util/Calendar;->access$1100()[Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-direct {v3, v4, v5}, Lcom/ibm/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_3b
.end method