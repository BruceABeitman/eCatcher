.class public final Lcom/instagram/creation/photo/gallery/g;
.super Ljava/lang/Object;
.source "ImageListUber.java"
.implements Lcom/instagram/creation/photo/gallery/d;
.field private final a:[Lcom/instagram/creation/photo/gallery/d;
.field private final b:Ljava/util/PriorityQueue;
.field private c:[J
.field private d:I
.field private e:[I
.field private f:I
.method public constructor <init>([Lcom/instagram/creation/photo/gallery/d;I)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, [Lcom/instagram/creation/photo/gallery/d;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/creation/photo/gallery/d;
iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
new-instance v2, Ljava/util/PriorityQueue;
const/4 v3, 0x4
const/4 v0, 0x1
if-ne p2, v0, :cond_50
new-instance v0, Lcom/instagram/creation/photo/gallery/h;
invoke-direct {v0, v1}, Lcom/instagram/creation/photo/gallery/h;-><init>(B)V
:goto_17
invoke-direct {v2, v3, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V
iput-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
const/16 v0, 0x10
new-array v0, v0, [J
iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
iput v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
array-length v0, v0
new-array v0, v0, [I
iput-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/photo/gallery/g;->f:I
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
array-length v2, v0
move v0, v1
:goto_37
if-ge v0, v2, :cond_56
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
aget-object v1, v1, v0
new-instance v3, Lcom/instagram/creation/photo/gallery/j;
invoke-direct {v3, v1, v0}, Lcom/instagram/creation/photo/gallery/j;-><init>(Lcom/instagram/creation/photo/gallery/d;I)V
invoke-virtual {v3}, Lcom/instagram/creation/photo/gallery/j;->a()Z
move-result v1
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
:cond_4d
add-int/lit8 v0, v0, 0x1
goto :goto_37
:cond_50
new-instance v0, Lcom/instagram/creation/photo/gallery/i;
invoke-direct {v0, v1}, Lcom/instagram/creation/photo/gallery/i;-><init>(B)V
goto :goto_17
:cond_56
return-void
.end method
.method private c()Lcom/instagram/creation/photo/gallery/j;
.registers 9
const-wide/16 v6, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/gallery/j;
if-nez v0, :cond_f
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
iget v1, v0, Lcom/instagram/creation/photo/gallery/j;->a:I
iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->f:I
if-ne v1, v2, :cond_21
iget v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
aget-wide v3, v2, v1
add-long/2addr v3, v6
aput-wide v3, v2, v1
goto :goto_e
:cond_21
iget v1, v0, Lcom/instagram/creation/photo/gallery/j;->a:I
iput v1, p0, Lcom/instagram/creation/photo/gallery/g;->f:I
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
array-length v1, v1
iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
if-ne v1, v2, :cond_3b
iget v1, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
mul-int/lit8 v1, v1, 0x2
new-array v1, v1, [J
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
:cond_3b
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
iget v2, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->f:I
int-to-long v3, v3
const/16 v5, 0x20
shl-long/2addr v3, v5
or-long/2addr v3, v6
aput-wide v3, v1, v2
goto :goto_e
.end method
.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
.registers 10
const/4 v0, 0x0
if-ltz p1, :cond_9
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/g;->b()I
move-result v1
if-le p1, v1, :cond_2c
:cond_9
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "index "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " out of range max is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/g;->b()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I
invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V
iget v3, p0, Lcom/instagram/creation/photo/gallery/g;->d:I
move v1, v0
:goto_34
if-ge v1, v3, :cond_71
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->c:[J
aget-wide v4, v2, v1
const-wide/16 v6, -0x1
and-long/2addr v6, v4
long-to-int v6, v6
const/16 v2, 0x20
shr-long/2addr v4, v2
long-to-int v4, v4
add-int v2, v0, v6
if-le v2, p1, :cond_56
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I
aget v1, v1, v4
sub-int v0, p1, v0
add-int/2addr v0, v1
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
aget-object v1, v1, v4
invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/d;->a(I)Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
:goto_55
:cond_55
return-object v0
:cond_56
add-int v2, v0, v6
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/g;->e:[I
aget v5, v0, v4
add-int/2addr v5, v6
aput v5, v0, v4
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v2
goto :goto_34
:cond_64
invoke-virtual {v1}, Lcom/instagram/creation/photo/gallery/j;->a()Z
move-result v2
if-eqz v2, :cond_6f
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
:cond_6f
add-int/lit8 v0, v0, 0x1
:cond_71
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/g;->c()Lcom/instagram/creation/photo/gallery/j;
move-result-object v1
if-nez v1, :cond_79
const/4 v0, 0x0
goto :goto_55
:cond_79
if-ne v0, p1, :cond_64
iget-object v0, v1, Lcom/instagram/creation/photo/gallery/j;->c:Lcom/instagram/creation/photo/gallery/c;
invoke-virtual {v1}, Lcom/instagram/creation/photo/gallery/j;->a()Z
move-result v2
if-eqz v2, :cond_55
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->b:Ljava/util/PriorityQueue;
invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
goto :goto_55
.end method
.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
.registers 6
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_5
if-ge v1, v3, :cond_14
aget-object v0, v2, v1
invoke-interface {v0, p1}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
if-eqz v0, :cond_10
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_5
:cond_14
const/4 v0, 0x0
goto :goto_f
.end method
.method public final a()V
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
array-length v1, v1
:goto_4
if-ge v0, v1, :cond_10
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
aget-object v2, v2, v0
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
return-void
.end method
.method public final b()I
.registers 6
const/4 v0, 0x0
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/g;->a:[Lcom/instagram/creation/photo/gallery/d;
array-length v3, v2
move v1, v0
:goto_5
if-ge v0, v3, :cond_11
aget-object v4, v2, v0
invoke-interface {v4}, Lcom/instagram/creation/photo/gallery/d;->b()I
move-result v4
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_11
return v1
.end method