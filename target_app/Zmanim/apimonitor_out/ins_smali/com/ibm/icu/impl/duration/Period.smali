.class public final Lcom/ibm/icu/impl/duration/Period;
.super Ljava/lang/Object;
.source "Period.java"
.field final counts:[I
.field final inFuture:Z
.field final timeLimit:B
.method private constructor <init>(IZFLcom/ibm/icu/impl/duration/TimeUnit;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
int-to-byte v0, p1
iput-byte v0, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
iput-boolean p2, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
array-length v0, v0
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
iget-object v0, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
iget-byte v1, p4, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
const/high16 v2, 0x447a
mul-float/2addr v2, p3
float-to-int v2, v2
add-int/lit8 v2, v2, 0x1
aput v2, v0, v1
return-void
.end method
.method constructor <init>(IZ[I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
int-to-byte v0, p1
iput-byte v0, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
iput-boolean p2, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
iput-object p3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
return-void
.end method
.method public static at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/ibm/icu/impl/duration/Period;->checkCount(F)V
new-instance v0, Lcom/ibm/icu/impl/duration/Period;
invoke-direct {v0, v1, v1, p0, p1}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZFLcom/ibm/icu/impl/duration/TimeUnit;)V
return-object v0
.end method
.method private static checkCount(F)V
.registers 4
const/4 v0, 0x0
cmpg-float v0, p0, v0
if-gez v0, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "count ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") cannot be negative"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
return-void
.end method
.method public static lessThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
.registers 5
invoke-static {p0}, Lcom/ibm/icu/impl/duration/Period;->checkCount(F)V
new-instance v0, Lcom/ibm/icu/impl/duration/Period;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0, p1}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZFLcom/ibm/icu/impl/duration/TimeUnit;)V
return-object v0
.end method
.method public static moreThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
.registers 5
invoke-static {p0}, Lcom/ibm/icu/impl/duration/Period;->checkCount(F)V
new-instance v0, Lcom/ibm/icu/impl/duration/Period;
const/4 v1, 0x2
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0, p1}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZFLcom/ibm/icu/impl/duration/TimeUnit;)V
return-object v0
.end method
.method private setFuture(Z)Lcom/ibm/icu/impl/duration/Period;
.registers 5
iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
if-eq v0, p1, :cond_e
new-instance v0, Lcom/ibm/icu/impl/duration/Period;
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
iget-object v2, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
invoke-direct {v0, v1, p1, v2}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZ[I)V
:goto_d
return-object v0
:cond_e
move-object v0, p0
goto :goto_d
.end method
.method private setTimeLimit(B)Lcom/ibm/icu/impl/duration/Period;
.registers 5
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
if-eq v0, p1, :cond_e
new-instance v0, Lcom/ibm/icu/impl/duration/Period;
iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
iget-object v2, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
invoke-direct {v0, p1, v1, v2}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZ[I)V
:goto_d
return-object v0
:cond_e
move-object v0, p0
goto :goto_d
.end method
.method private setTimeUnitInternalValue(Lcom/ibm/icu/impl/duration/TimeUnit;I)Lcom/ibm/icu/impl/duration/Period;
.registers 9
iget-byte v2, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
iget-object v3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v3, v3, v2
if-eq v3, p2, :cond_28
iget-object v3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
array-length v3, v3
new-array v1, v3, [I
const/4 v0, 0x0
:goto_e
iget-object v3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
array-length v3, v3
if-ge v0, v3, :cond_1c
iget-object v3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v3, v3, v0
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1c
aput p2, v1, v2
new-instance v3, Lcom/ibm/icu/impl/duration/Period;
iget-byte v4, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
iget-boolean v5, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
invoke-direct {v3, v4, v5, v1}, Lcom/ibm/icu/impl/duration/Period;-><init>(IZ[I)V
:goto_27
return-object v3
:cond_28
move-object v3, p0
goto :goto_27
.end method
.method private setTimeUnitValue(Lcom/ibm/icu/impl/duration/TimeUnit;F)Lcom/ibm/icu/impl/duration/Period;
.registers 6
const/4 v0, 0x0
cmpg-float v0, p2, v0
if-gez v0, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "value: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const/high16 v0, 0x447a
mul-float/2addr v0, p2
float-to-int v0, v0
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/Period;->setTimeUnitInternalValue(Lcom/ibm/icu/impl/duration/TimeUnit;I)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
.registers 4
invoke-static {p1}, Lcom/ibm/icu/impl/duration/Period;->checkCount(F)V
invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/duration/Period;->setTimeUnitValue(Lcom/ibm/icu/impl/duration/TimeUnit;F)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public at()Lcom/ibm/icu/impl/duration/Period;
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setTimeLimit(B)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public equals(Lcom/ibm/icu/impl/duration/Period;)Z
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_26
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
iget-byte v2, p1, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
if-ne v1, v2, :cond_26
iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
iget-boolean v2, p1, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
if-ne v1, v2, :cond_26
const/4 v0, 0x0
:goto_10
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
array-length v1, v1
if-ge v0, v1, :cond_24
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v1, v1, v0
iget-object v2, p1, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v2, v2, v0
if-eq v1, v2, :cond_21
move v1, v3
:goto_20
return v1
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_24
const/4 v1, 0x1
goto :goto_20
:cond_26
move v1, v3
goto :goto_20
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
:try_start_0
check-cast p1, Lcom/ibm/icu/impl/duration/Period;
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/Period;->equals(Lcom/ibm/icu/impl/duration/Period;)Z
:try_end_5
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_7
move-result v1
:goto_6
return v1
:catch_7
move-exception v1
move-object v0, v1
const/4 v1, 0x0
goto :goto_6
.end method
.method public getCount(Lcom/ibm/icu/impl/duration/TimeUnit;)F
.registers 5
iget-byte v0, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v1, v1, v0
if-nez v1, :cond_a
const/4 v1, 0x0
:goto_9
return v1
:cond_a
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v1, v1, v0
const/4 v2, 0x1
sub-int/2addr v1, v2
int-to-float v1, v1
const/high16 v2, 0x447a
div-float/2addr v1, v2
goto :goto_9
.end method
.method public hashCode()I
.registers 5
iget-byte v2, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
shl-int/lit8 v2, v2, 0x1
iget-boolean v3, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
if-eqz v3, :cond_1c
const/4 v3, 0x1
:goto_9
or-int v0, v2, v3
const/4 v1, 0x0
:goto_c
iget-object v2, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
array-length v2, v2
if-ge v1, v2, :cond_1e
shl-int/lit8 v2, v0, 0x2
iget-object v3, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v3, v3, v1
xor-int v0, v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_1c
const/4 v3, 0x0
goto :goto_9
:cond_1e
return v0
.end method
.method public inFuture()Lcom/ibm/icu/impl/duration/Period;
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setFuture(Z)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public inFuture(Z)Lcom/ibm/icu/impl/duration/Period;
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/Period;->setFuture(Z)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public inPast()Lcom/ibm/icu/impl/duration/Period;
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setFuture(Z)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public inPast(Z)Lcom/ibm/icu/impl/duration/Period;
.registers 3
if-nez p1, :cond_8
const/4 v0, 0x1
:goto_3
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setFuture(Z)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method
.method public isInFuture()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
return v0
.end method
.method public isInPast()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isLessThan()Z
.registers 3
const/4 v1, 0x1
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
if-ne v0, v1, :cond_7
move v0, v1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isMoreThan()Z
.registers 3
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isSet()Z
.registers 3
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
array-length v1, v1
if-ge v0, v1, :cond_11
iget-object v1, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
aget v1, v1, v0
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_d
return v1
:cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_11
const/4 v1, 0x0
goto :goto_d
.end method
.method public isSet(Lcom/ibm/icu/impl/duration/TimeUnit;)Z
.registers 4
iget-object v0, p0, Lcom/ibm/icu/impl/duration/Period;->counts:[I
iget-byte v1, p1, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
aget v0, v0, v1
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public lessThan()Lcom/ibm/icu/impl/duration/Period;
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setTimeLimit(B)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public moreThan()Lcom/ibm/icu/impl/duration/Period;
.registers 2
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/Period;->setTimeLimit(B)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method
.method public omit(Lcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/duration/Period;->setTimeUnitInternalValue(Lcom/ibm/icu/impl/duration/TimeUnit;I)Lcom/ibm/icu/impl/duration/Period;
move-result-object v0
return-object v0
.end method