.class public final Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"
.field public final latitude:D
.field public final longitude:D
.method public constructor <init>(DD)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D
iput-wide p3, p0, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 6
const-wide v3, 0x404ca5dc1a63c1f8L
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D
mul-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D
mul-double/2addr v1, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method