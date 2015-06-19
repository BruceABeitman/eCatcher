.class public final Lcom/squareup/okhttp/internal/http/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:[Ljava/lang/String;
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/f;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/f;->a(Lcom/squareup/okhttp/internal/http/f;)Ljava/util/List;
move-result-object v0
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/f;->a(Lcom/squareup/okhttp/internal/http/f;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/f;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/f;)V
return-void
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v0, v0
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method public final a(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/e;
.registers 7
new-instance v1, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v1}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_21
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1e
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
add-int/lit8 v4, v0, 0x1
aget-object v3, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
:cond_1e
add-int/lit8 v0, v0, 0x2
goto :goto_6
:cond_21
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
return-object v0
.end method
.method public final a(I)Ljava/lang/String;
.registers 4
mul-int/lit8 v0, p1, 0x2
if-ltz v0, :cond_9
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_b
:cond_9
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
aget-object v0, v1, v0
goto :goto_a
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v0, v1
add-int/lit8 v0, v0, -0x2
:goto_5
if-ltz v0, :cond_17
aget-object v2, v1, v0
invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_14
add-int/lit8 v0, v0, 0x1
aget-object v0, v1, v0
:goto_13
return-object v0
:cond_14
add-int/lit8 v0, v0, -0x2
goto :goto_5
:cond_17
const/4 v0, 0x0
goto :goto_13
.end method
.method public final b()Lcom/squareup/okhttp/internal/http/f;
.registers 4
new-instance v0, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/f;->a(Lcom/squareup/okhttp/internal/http/f;)Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object v0
.end method
.method public final b(I)Ljava/lang/String;
.registers 4
mul-int/lit8 v0, p1, 0x2
add-int/lit8 v0, v0, 0x1
if-ltz v0, :cond_b
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_d
:cond_b
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
aget-object v0, v1, v0
goto :goto_c
.end method
.method public final b(Ljava/lang/String;)Ljava/util/List;
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
move v3, v0
move-object v0, v1
move v1, v3
:goto_5
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v2, v2
div-int/lit8 v2, v2, 0x2
if-ge v1, v2, :cond_28
invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_25
if-nez v0, :cond_1e
new-instance v0, Ljava/util/ArrayList;
const/4 v2, 0x2
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
:cond_1e
invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_25
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_28
if-eqz v0, :cond_2f
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
:goto_2e
return-object v0
:cond_2f
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
goto :goto_2e
.end method
.method public final toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->a:[Ljava/lang/String;
array-length v2, v2
div-int/lit8 v2, v2, 0x2
if-ge v0, v2, :cond_2b
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_2b
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method