.class abstract Lcom/ibm/icu/util/Calendar$CalendarFactory;
.super Ljava/lang/Object;
.source "Calendar.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createCalendar(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getSupportedLocaleNames()Ljava/util/Set;
.end method
.method public visible()Z
.registers 2
const/4 v0, 0x1
return v0
.end method