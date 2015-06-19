.class public final Lcom/fasterxml/jackson/a/g/a;
.super Ljava/lang/Object;
.source "BufferRecycler.java"
.field protected final a:[[B
.field protected final b:[[C
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/fasterxml/jackson/a/g/b;->values()[Lcom/fasterxml/jackson/a/g/b;
move-result-object v0
array-length v0, v0
new-array v0, v0, [[B
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B
invoke-static {}, Lcom/fasterxml/jackson/a/g/c;->values()[Lcom/fasterxml/jackson/a/g/c;
move-result-object v0
array-length v0, v0
new-array v0, v0, [[C
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C
return-void
.end method
.method private static a(I)[B
.registers 2
new-array v0, p0, [B
return-object v0
.end method
.method private static b(I)[C
.registers 2
new-array v0, p0, [C
return-object v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/g/b;[B)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/b;->ordinal()I
move-result v1
aput-object p2, v0, v1
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/g/c;[C)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/c;->ordinal()I
move-result v1
aput-object p2, v0, v1
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/g/b;)[B
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/b;->ordinal()I
move-result v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B
aget-object v0, v0, v1
if-nez v0, :cond_11
iget v0, p1, Lcom/fasterxml/jackson/a/g/b;->e:I
invoke-static {v0}, Lcom/fasterxml/jackson/a/g/a;->a(I)[B
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v2, p0, Lcom/fasterxml/jackson/a/g/a;->a:[[B
const/4 v3, 0x0
aput-object v3, v2, v1
goto :goto_10
.end method
.method public final a(Lcom/fasterxml/jackson/a/g/c;)[C
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/g/a;->a(Lcom/fasterxml/jackson/a/g/c;I)[C
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/g/c;I)[C
.registers 7
iget v0, p1, Lcom/fasterxml/jackson/a/g/c;->e:I
if-le v0, p2, :cond_6
iget p2, p1, Lcom/fasterxml/jackson/a/g/c;->e:I
:cond_6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/g/c;->ordinal()I
move-result v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C
aget-object v0, v0, v1
if-eqz v0, :cond_13
array-length v2, v0
if-ge v2, p2, :cond_18
:cond_13
invoke-static {p2}, Lcom/fasterxml/jackson/a/g/a;->b(I)[C
move-result-object v0
:goto_17
return-object v0
:cond_18
iget-object v2, p0, Lcom/fasterxml/jackson/a/g/a;->b:[[C
const/4 v3, 0x0
aput-object v3, v2, v1
goto :goto_17
.end method