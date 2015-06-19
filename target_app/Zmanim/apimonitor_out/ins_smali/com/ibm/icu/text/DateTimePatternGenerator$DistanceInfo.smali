.class  Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"
.field  extraFieldMask:I
.field  missingFieldMask:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V
return-void
.end method
.method  addExtra(I)V
.registers 4
iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
const/4 v1, 0x1
shl-int/2addr v1, p1
or-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
return-void
.end method
.method  addMissing(I)V
.registers 4
iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
const/4 v1, 0x1
shl-int/2addr v1, p1
or-int/2addr v0, v1
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
return-void
.end method
.method  clear()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
return-void
.end method
.method  setTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)V
.registers 3
iget v0, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
iget v0, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "missingFieldMask: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
#calls: Lcom/ibm/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;
invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$800(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", extraFieldMask: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
#calls: Lcom/ibm/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;
invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$800(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method