.class public final Lcom/bbm/util/bd;
.super Ljava/lang/Object;
.source "DateUtil.java"
.method public static a(Ljava/util/Date;)I
.registers 5
const-string v0, "GMT"
invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
new-instance v1, Ljava/util/GregorianCalendar;
invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
const/4 v0, 0x5
invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I
move-result v0
return v0
.end method
.method public static a()J
.registers 7
const/4 v4, 0x0
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v3
new-instance v0, Ljava/util/GregorianCalendar;
const-string v1, "GMT"
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
const/4 v1, 0x1
invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I
move-result v1
const/4 v2, 0x2
invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I
move-result v2
const/4 v5, 0x5
invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I
move-result v3
move v5, v4
move v6, v4
invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v0
return-wide v0
.end method
.method public static a(Landroid/content/Context;J)Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/bbm/util/f/a;->b()Lcom/bbm/util/f/a;
move-result-object v0
invoke-static {}, Lcom/bbm/util/f/k;->a()Lcom/bbm/util/f/k;
move-result-object v1
invoke-virtual {v1, p0, p1, p2, v0}, Lcom/bbm/util/f/k;->a(Landroid/content/Context;JLcom/bbm/util/f/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/util/Date;ZII)Ljava/util/Date;
.registers 6
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
if-eqz p1, :cond_12
const-string v1, "GMT"
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
:cond_12
const/16 v1, 0xb
invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V
if-lez p3, :cond_1d
const/4 v1, 0x5
invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V
:cond_1d
invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/content/Context;J)Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/bbm/util/f/a;->d()Lcom/bbm/util/f/a;
move-result-object v0
invoke-static {}, Lcom/bbm/util/f/k;->a()Lcom/bbm/util/f/k;
move-result-object v1
invoke-virtual {v1, p0, p1, p2, v0}, Lcom/bbm/util/f/k;->a(Landroid/content/Context;JLcom/bbm/util/f/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/content/Context;J)Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/bbm/util/f/a;->a()Lcom/bbm/util/f/a;
move-result-object v0
invoke-static {}, Lcom/bbm/util/f/k;->a()Lcom/bbm/util/f/k;
move-result-object v1
invoke-virtual {v1, p0, p1, p2, v0}, Lcom/bbm/util/f/k;->a(Landroid/content/Context;JLcom/bbm/util/f/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d(Landroid/content/Context;J)Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/bbm/util/f/a;->c()Lcom/bbm/util/f/a;
move-result-object v0
invoke-static {}, Lcom/bbm/util/f/k;->a()Lcom/bbm/util/f/k;
move-result-object v1
invoke-virtual {v1, p0, p1, p2, v0}, Lcom/bbm/util/f/k;->a(Landroid/content/Context;JLcom/bbm/util/f/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method