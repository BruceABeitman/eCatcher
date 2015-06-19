.class  Lcom/ibm/icu/impl/CalendarAstronomer$3;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"
.implements Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;
.field final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
.method constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$3;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public eval()D
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$3;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonAge()D
move-result-wide v0
return-wide v0
.end method