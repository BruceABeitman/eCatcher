.class public final Lcom/fasterxml/jackson/a/g/m;
.super Lcom/fasterxml/jackson/a/g/l;
.source "JsonParserSequence.java"
.field protected final b:[Lcom/fasterxml/jackson/a/l;
.field protected c:I
.method private constructor <init>([Lcom/fasterxml/jackson/a/l;)V
.registers 3
const/4 v0, 0x0
aget-object v0, p1, v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/l;-><init>(Lcom/fasterxml/jackson/a/l;)V
iput-object p1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/g/m;
.registers 5
instance-of v0, p0, Lcom/fasterxml/jackson/a/g/m;
if-nez v0, :cond_17
instance-of v0, p1, Lcom/fasterxml/jackson/a/g/m;
if-nez v0, :cond_17
new-instance v0, Lcom/fasterxml/jackson/a/g/m;
const/4 v1, 0x2
new-array v1, v1, [Lcom/fasterxml/jackson/a/l;
const/4 v2, 0x0
aput-object p0, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/g/m;-><init>([Lcom/fasterxml/jackson/a/l;)V
:goto_16
return-object v0
:cond_17
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
instance-of v1, p0, Lcom/fasterxml/jackson/a/g/m;
if-eqz v1, :cond_41
check-cast p0, Lcom/fasterxml/jackson/a/g/m;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V
:goto_25
instance-of v1, p1, Lcom/fasterxml/jackson/a/g/m;
if-eqz v1, :cond_45
check-cast p1, Lcom/fasterxml/jackson/a/g/m;
invoke-direct {p1, v0}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V
:goto_2e
new-instance v1, Lcom/fasterxml/jackson/a/g/m;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
new-array v2, v2, [Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/a/l;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/a/g/m;-><init>([Lcom/fasterxml/jackson/a/l;)V
move-object v0, v1
goto :goto_16
:cond_41
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_25
:cond_45
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2e
.end method
.method private a(Ljava/util/List;)V
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;
array-length v2, v1
move v1, v0
:goto_8
if-ge v1, v2, :cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;
aget-object v0, v0, v1
instance-of v3, v0, Lcom/fasterxml/jackson/a/g/m;
if-eqz v3, :cond_1b
check-cast v0, Lcom/fasterxml/jackson/a/g/m;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/g/m;->a(Ljava/util/List;)V
:goto_17
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_1b
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_1f
return-void
.end method
.method private a()Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/a/g/m;->c:I
iget-object v1, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;
array-length v1, v1
if-lt v0, v1, :cond_9
const/4 v0, 0x0
:goto_8
return v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->b:[Lcom/fasterxml/jackson/a/l;
iget v1, p0, Lcom/fasterxml/jackson/a/g/m;->c:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/g/m;->c:I
aget-object v0, v0, v1
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;
const/4 v0, 0x1
goto :goto_8
.end method
.method public final close()V
.registers 2
:cond_0
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V
invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/m;->a()Z
move-result v0
if-nez v0, :cond_0
return-void
.end method
.method public final nextToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/m;->a()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/m;->a:Lcom/fasterxml/jackson/a/l;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
if-eqz v0, :cond_9
goto :goto_8
:cond_18
const/4 v0, 0x0
goto :goto_8
.end method