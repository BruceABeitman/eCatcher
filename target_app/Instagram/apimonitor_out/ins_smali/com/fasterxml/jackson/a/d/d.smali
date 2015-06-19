.class public final Lcom/fasterxml/jackson/a/d/d;
.super Lcom/fasterxml/jackson/a/q;
.source "JsonReadContext.java"
.field protected final a:Lcom/fasterxml/jackson/a/d/d;
.field protected b:I
.field protected c:I
.field protected d:Ljava/lang/String;
.field protected e:Lcom/fasterxml/jackson/a/d/d;
.method private constructor <init>(Lcom/fasterxml/jackson/a/d/d;III)V
.registers 6
invoke-direct {p0}, Lcom/fasterxml/jackson/a/q;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->e:Lcom/fasterxml/jackson/a/d/d;
iput p2, p0, Lcom/fasterxml/jackson/a/d/d;->_type:I
iput-object p1, p0, Lcom/fasterxml/jackson/a/d/d;->a:Lcom/fasterxml/jackson/a/d/d;
iput p3, p0, Lcom/fasterxml/jackson/a/d/d;->b:I
iput p4, p0, Lcom/fasterxml/jackson/a/d/d;->c:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/d;->_index:I
return-void
.end method
.method public static a()Lcom/fasterxml/jackson/a/d/d;
.registers 4
const/4 v3, -0x1
new-instance v0, Lcom/fasterxml/jackson/a/d/d;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, v1, v2, v3, v3}, Lcom/fasterxml/jackson/a/d/d;-><init>(Lcom/fasterxml/jackson/a/d/d;III)V
return-object v0
.end method
.method private a(III)V
.registers 5
iput p1, p0, Lcom/fasterxml/jackson/a/d/d;->_type:I
const/4 v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/d;->_index:I
iput p2, p0, Lcom/fasterxml/jackson/a/d/d;->b:I
iput p3, p0, Lcom/fasterxml/jackson/a/d/d;->c:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->d:Ljava/lang/String;
return-void
.end method
.method public static b()Lcom/fasterxml/jackson/a/d/d;
.registers 4
const/4 v3, 0x0
new-instance v0, Lcom/fasterxml/jackson/a/d/d;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-direct {v0, v1, v3, v2, v3}, Lcom/fasterxml/jackson/a/d/d;-><init>(Lcom/fasterxml/jackson/a/d/d;III)V
return-object v0
.end method
.method public final a(II)Lcom/fasterxml/jackson/a/d/d;
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->e:Lcom/fasterxml/jackson/a/d/d;
if-nez v0, :cond_d
new-instance v0, Lcom/fasterxml/jackson/a/d/d;
invoke-direct {v0, p0, v1, p1, p2}, Lcom/fasterxml/jackson/a/d/d;-><init>(Lcom/fasterxml/jackson/a/d/d;III)V
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->e:Lcom/fasterxml/jackson/a/d/d;
:goto_c
return-object v0
:cond_d
invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/a/d/d;->a(III)V
goto :goto_c
.end method
.method public final a(Ljava/lang/Object;)Lcom/fasterxml/jackson/a/j;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/a/j;
const-wide/16 v2, -0x1
iget v4, p0, Lcom/fasterxml/jackson/a/d/d;->b:I
iget v5, p0, Lcom/fasterxml/jackson/a/d/d;->c:I
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JII)V
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/a/d/d;->d:Ljava/lang/String;
return-void
.end method
.method public final b(II)Lcom/fasterxml/jackson/a/d/d;
.registers 5
const/4 v1, 0x2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->e:Lcom/fasterxml/jackson/a/d/d;
if-nez v0, :cond_d
new-instance v0, Lcom/fasterxml/jackson/a/d/d;
invoke-direct {v0, p0, v1, p1, p2}, Lcom/fasterxml/jackson/a/d/d;-><init>(Lcom/fasterxml/jackson/a/d/d;III)V
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->e:Lcom/fasterxml/jackson/a/d/d;
:goto_c
return-object v0
:cond_d
invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/a/d/d;->a(III)V
goto :goto_c
.end method
.method public final c()Lcom/fasterxml/jackson/a/d/d;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->a:Lcom/fasterxml/jackson/a/d/d;
return-object v0
.end method
.method public final d()Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/a/d/d;->_index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/d;->_index:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/d;->_type:I
if-eqz v1, :cond_e
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/d;->d:Ljava/lang/String;
return-object v0
.end method
.method public final synthetic getParent()Lcom/fasterxml/jackson/a/q;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x22
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget v1, p0, Lcom/fasterxml/jackson/a/d/d;->_type:I
packed-switch v1, :pswitch_data_4c
:goto_e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_13
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_e
:pswitch_19
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentIndex()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
:pswitch_2b
const/16 v1, 0x7b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/d;->d:Ljava/lang/String;
if-eqz v1, :cond_45
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/d;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/c/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_3f
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_e
:cond_45
const/16 v1, 0x3f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3f
nop
:pswitch_data_4c
.packed-switch 0x0
:pswitch_13
:pswitch_19
:pswitch_2b
.end packed-switch
.end method