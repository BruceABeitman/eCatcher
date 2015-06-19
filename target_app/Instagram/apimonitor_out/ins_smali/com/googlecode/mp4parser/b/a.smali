.class public final Lcom/googlecode/mp4parser/b/a;
.super Ljava/lang/Object;
.source "CharCache.java"
.field private a:[C
.field private b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x32
new-array v0, v0, [C
iput-object v0, p0, Lcom/googlecode/mp4parser/b/a;->a:[C
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/mp4parser/b/a;->b:I
return-void
.end method
.method public final a(C)V
.registers 4
iget v0, p0, Lcom/googlecode/mp4parser/b/a;->b:I
iget-object v1, p0, Lcom/googlecode/mp4parser/b/a;->a:[C
array-length v1, v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_15
iget-object v0, p0, Lcom/googlecode/mp4parser/b/a;->a:[C
iget v1, p0, Lcom/googlecode/mp4parser/b/a;->b:I
aput-char p1, v0, v1
iget v0, p0, Lcom/googlecode/mp4parser/b/a;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/googlecode/mp4parser/b/a;->b:I
:cond_15
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/b/a;->b:I
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/googlecode/mp4parser/b/a;->a:[C
const/4 v2, 0x0
iget v3, p0, Lcom/googlecode/mp4parser/b/a;->b:I
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
return-object v0
.end method