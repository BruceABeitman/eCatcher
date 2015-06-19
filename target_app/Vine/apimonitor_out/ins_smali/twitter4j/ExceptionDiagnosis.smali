.class final Ltwitter4j/ExceptionDiagnosis;
.super Ljava/lang/Object;
.source "ExceptionDiagnosis.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x64cc93f854f97a4L
.field  hexString:Ljava/lang/String;
.field  lineNumberHash:I
.field  stackLineHash:I
.field  th:Ljava/lang/Throwable;
.method constructor <init>(Ljava/lang/Throwable;)V
.registers 3
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-direct {p0, p1, v0}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V
return-void
.end method
.method constructor <init>(Ljava/lang/Throwable;[Ljava/lang/String;)V
.registers 14
const/4 v9, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v8, ""
iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
iput-object p1, p0, Ltwitter4j/ExceptionDiagnosis;->th:Ljava/lang/Throwable;
invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v7
iput v9, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
iput v9, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
array-length v8, v7
add-int/lit8 v3, v8, -0x1
:goto_15
if-ltz v3, :cond_54
aget-object v6, v7, v3
move-object v0, p2
array-length v5, v0
const/4 v4, 0x0
:goto_1c
if-ge v4, v5, :cond_4e
aget-object v1, v0, v4
invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_51
invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->hashCode()I
move-result v8
invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->hashCode()I
move-result v9
add-int v2, v8, v9
iget v8, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
mul-int/lit8 v8, v8, 0x1f
add-int/2addr v8, v2
iput v8, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
iget v8, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
mul-int/lit8 v8, v8, 0x1f
invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v9
add-int/2addr v8, v9
iput v8, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
:cond_4e
add-int/lit8 v3, v3, -0x1
goto :goto_15
:cond_51
add-int/lit8 v4, v4, 0x1
goto :goto_1c
:cond_54
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
iget-object v9, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
invoke-direct {p0, v9}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "-"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget v9, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
invoke-direct {p0, v9}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v8
if-eqz v8, :cond_ad
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
iget-object v9, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
new-instance v9, Ltwitter4j/ExceptionDiagnosis;
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v10
invoke-direct {v9, v10, p2}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V
invoke-virtual {v9}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
iput-object v8, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
:cond_ad
return-void
.end method
.method private toHexString(I)Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "0000000"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x8
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method  asHexString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/ExceptionDiagnosis;->hexString:Ljava/lang/String;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Ltwitter4j/ExceptionDiagnosis;
iget v3, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
iget v4, v0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
if-eq v3, v4, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget v3, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
iget v4, v0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
if-eq v3, v4, :cond_4
move v1, v2
goto :goto_4
.end method
.method  getLineNumberHash()I
.registers 2
iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
return v0
.end method
.method  getLineNumberHashAsHex()Ljava/lang/String;
.registers 2
iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
invoke-direct {p0, v0}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  getStackLineHash()I
.registers 2
iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
return v0
.end method
.method  getStackLineHashAsHex()Ljava/lang/String;
.registers 2
iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
invoke-direct {p0, v0}, Ltwitter4j/ExceptionDiagnosis;->toHexString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 4
iget v0, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
add-int v0, v1, v2
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ExceptionDiagnosis{stackLineHash="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/ExceptionDiagnosis;->stackLineHash:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", lineNumberHash="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Ltwitter4j/ExceptionDiagnosis;->lineNumberHash:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method