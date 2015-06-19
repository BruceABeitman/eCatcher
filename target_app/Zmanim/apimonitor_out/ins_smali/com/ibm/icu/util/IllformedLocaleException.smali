.class public Lcom/ibm/icu/util/IllformedLocaleException;
.super Ljava/lang/IllegalArgumentException;
.source "IllformedLocaleException.java"
.field private static final serialVersionUID:J = 0x1L
.field private _errIdx:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 7
const/4 v3, -0x1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
if-ne p2, v3, :cond_1e
const-string v1, ""
:goto_e
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
iput v3, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I
iput p2, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I
return-void
:cond_1e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, " [at index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_e
.end method
.method public getErrorIndex()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I
return v0
.end method