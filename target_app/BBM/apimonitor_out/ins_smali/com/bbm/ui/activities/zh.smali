.class final Lcom/bbm/ui/activities/zh;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"
.implements Lcom/bbm/ui/ba;
.field final synthetic a:Lcom/bbm/ui/activities/NewListItemActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewListItemActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/zh;->a:Lcom/bbm/ui/activities/NewListItemActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/Date;Ljava/util/Date;)V
.registers 10
const/4 v4, 0x0
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
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
iget-object v1, p0, Lcom/bbm/ui/activities/zh;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/zh;->a:Lcom/bbm/ui/activities/NewListItemActivity;
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v2
invoke-static {v2, v3}, Lcom/bbm/ui/activities/NewListItemActivity;->a(J)J
move-result-wide v2
iput-wide v2, v1, Lcom/bbm/ui/activities/NewListItemActivity;->m:J
return-void
.end method