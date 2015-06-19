.class final Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "CalendarServiceShim.java"
.field private delegate:Lcom/ibm/icu/util/Calendar$CalendarFactory;
.method constructor <init>(Lcom/ibm/icu/util/Calendar$CalendarFactory;)V
.registers 3
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar$CalendarFactory;->visible()Z
move-result v0
if-eqz v0, :cond_d
const/4 v0, 0x1
:goto_7
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V
iput-object p1, p0, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;->delegate:Lcom/ibm/icu/util/Calendar$CalendarFactory;
return-void
:cond_d
const/4 v0, 0x0
goto :goto_7
.end method
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.registers 9
const/4 v5, 0x0
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;->handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z
move-result v4
if-eqz v4, :cond_1d
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-object v1, v0
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Lcom/ibm/icu/util/ULocale;
move-result-object v2
iget-object v4, p0, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;->delegate:Lcom/ibm/icu/util/Calendar$CalendarFactory;
invoke-virtual {v4, v2}, Lcom/ibm/icu/util/Calendar$CalendarFactory;->createCalendar(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
move-result-object v3
if-nez v3, :cond_1b
invoke-virtual {p2, p1, v5, p0}, Lcom/ibm/icu/impl/ICUService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;)Ljava/lang/Object;
move-result-object v3
:cond_1b
move-object v4, v3
:goto_1c
return-object v4
:cond_1d
move-object v4, v5
goto :goto_1c
.end method
.method protected getSupportedIDs()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;->delegate:Lcom/ibm/icu/util/Calendar$CalendarFactory;
invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalendarFactory;->getSupportedLocaleNames()Ljava/util/Set;
move-result-object v0
return-object v0
.end method