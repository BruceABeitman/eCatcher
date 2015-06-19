.class public final Lcom/fasterxml/jackson/a/c/l;
.super Ljava/lang/Object;
.source "SerializedString.java"
.implements Lcom/fasterxml/jackson/a/u;
.implements Ljava/io/Serializable;
.field protected final a:Ljava/lang/String;
.field protected b:[B
.field protected c:[B
.field protected d:[C
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Null String illegal for SerializedString"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
return-void
.end method
.method public final a([BI)I
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->b:[B
if-nez v0, :cond_10
invoke-static {}, Lcom/fasterxml/jackson/a/c/f;->a()Lcom/fasterxml/jackson/a/c/f;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/f;->b(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->b:[B
:cond_10
array-length v1, v0
add-int v2, p2, v1
array-length v3, p1
if-le v2, v3, :cond_18
const/4 v0, -0x1
:goto_17
return v0
:cond_18
const/4 v2, 0x0
invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move v0, v1
goto :goto_17
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()[C
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->d:[C
if-nez v0, :cond_10
invoke-static {}, Lcom/fasterxml/jackson/a/c/f;->a()Lcom/fasterxml/jackson/a/c/f;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/f;->a(Ljava/lang/String;)[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->d:[C
:cond_10
return-object v0
.end method
.method public final c()[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->c:[B
if-nez v0, :cond_10
invoke-static {}, Lcom/fasterxml/jackson/a/c/f;->a()Lcom/fasterxml/jackson/a/c/f;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/f;->c(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->c:[B
:cond_10
return-object v0
.end method
.method public final d()[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->b:[B
if-nez v0, :cond_10
invoke-static {}, Lcom/fasterxml/jackson/a/c/f;->a()Lcom/fasterxml/jackson/a/c/f;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/f;->b(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->b:[B
:cond_10
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p1, :cond_10
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_12
:cond_10
const/4 v0, 0x0
goto :goto_3
:cond_12
check-cast p1, Lcom/fasterxml/jackson/a/c/l;
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/l;->a:Ljava/lang/String;
return-object v0
.end method