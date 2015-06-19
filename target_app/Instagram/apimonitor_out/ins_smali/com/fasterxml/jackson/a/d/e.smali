.class public final Lcom/fasterxml/jackson/a/d/e;
.super Lcom/fasterxml/jackson/a/q;
.source "JsonWriteContext.java"
.field protected final a:Lcom/fasterxml/jackson/a/d/e;
.field protected b:Ljava/lang/String;
.field protected c:Lcom/fasterxml/jackson/a/d/e;
.method private constructor <init>(ILcom/fasterxml/jackson/a/d/e;)V
.registers 4
invoke-direct {p0}, Lcom/fasterxml/jackson/a/q;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->c:Lcom/fasterxml/jackson/a/d/e;
iput p1, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
iput-object p2, p0, Lcom/fasterxml/jackson/a/d/e;->a:Lcom/fasterxml/jackson/a/d/e;
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
return-void
.end method
.method public static a()Lcom/fasterxml/jackson/a/d/e;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/a/d/e;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/a/d/e;-><init>(ILcom/fasterxml/jackson/a/d/e;)V
return-object v0
.end method
.method private a(I)Lcom/fasterxml/jackson/a/d/e;
.registers 3
iput p1, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
return-object p0
.end method
.method private a(Ljava/lang/StringBuilder;)V
.registers 5
const/16 v2, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
const/4 v1, 0x2
if-ne v0, v1, :cond_27
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
if-eqz v0, :cond_21
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_1b
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_20
return-void
:cond_21
const/16 v0, 0x3f
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_1b
:cond_27
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
const/4 v1, 0x1
if-ne v0, v1, :cond_3e
const/16 v0, 0x5b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/e;->getCurrentIndex()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_20
:cond_3e
const-string v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_20
.end method
.method public final a(Ljava/lang/String;)I
.registers 5
const/4 v0, 0x4
iget v1, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
const/4 v2, 0x2
if-ne v1, v2, :cond_a
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
if-eqz v1, :cond_b
:cond_a
:goto_a
return v0
:cond_b
iput-object p1, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
if-gez v0, :cond_13
const/4 v0, 0x0
goto :goto_a
:cond_13
const/4 v0, 0x1
goto :goto_a
.end method
.method public final b()Lcom/fasterxml/jackson/a/d/e;
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->c:Lcom/fasterxml/jackson/a/d/e;
if-nez v0, :cond_d
new-instance v0, Lcom/fasterxml/jackson/a/d/e;
invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/a/d/e;-><init>(ILcom/fasterxml/jackson/a/d/e;)V
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->c:Lcom/fasterxml/jackson/a/d/e;
:goto_c
return-object v0
:cond_d
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/d/e;->a(I)Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
goto :goto_c
.end method
.method public final c()Lcom/fasterxml/jackson/a/d/e;
.registers 3
const/4 v1, 0x2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->c:Lcom/fasterxml/jackson/a/d/e;
if-nez v0, :cond_d
new-instance v0, Lcom/fasterxml/jackson/a/d/e;
invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/a/d/e;-><init>(ILcom/fasterxml/jackson/a/d/e;)V
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->c:Lcom/fasterxml/jackson/a/d/e;
:goto_c
return-object v0
:cond_d
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/d/e;->a(I)Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
goto :goto_c
.end method
.method public final d()Lcom/fasterxml/jackson/a/d/e;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->a:Lcom/fasterxml/jackson/a/d/e;
return-object v0
.end method
.method public final e()I
.registers 5
const/4 v0, 0x2
const/4 v2, 0x1
const/4 v1, 0x0
iget v3, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
if-ne v3, v0, :cond_17
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
if-nez v1, :cond_d
const/4 v0, 0x5
:goto_c
return v0
:cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
iget v1, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
goto :goto_c
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_type:I
if-ne v0, v2, :cond_29
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
iget v3, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
if-gez v0, :cond_27
move v0, v1
goto :goto_c
:cond_27
move v0, v2
goto :goto_c
:cond_29
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
iget v0, p0, Lcom/fasterxml/jackson/a/d/e;->_index:I
if-nez v0, :cond_35
move v0, v1
goto :goto_c
:cond_35
const/4 v0, 0x3
goto :goto_c
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/e;->b:Ljava/lang/String;
return-object v0
.end method
.method public final synthetic getParent()Lcom/fasterxml/jackson/a/q;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method