.class  Lcom/ibm/icu/impl/CalendarAstronomer$4;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"
.implements Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;
.field final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
.method constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$4;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public eval()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$4;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;
invoke-virtual {v0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v0
return-object v0
.end method