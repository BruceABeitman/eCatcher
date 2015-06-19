.class final Lcom/squareup/okhttp/internal/a/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:[B
.field  b:I
.field  c:I
.field  d:Lcom/squareup/okhttp/internal/a/m;
.field  e:Lcom/squareup/okhttp/internal/a/m;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x800
new-array v0, v0, [B
iput-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->a:[B
return-void
.end method
.method public final a()Lcom/squareup/okhttp/internal/a/m;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
if-eq v0, p0, :cond_18
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
:goto_7
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iput-object v3, v2, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
iput-object v3, v2, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
iput-object v1, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iput-object v1, p0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
return-object v0
:cond_18
move-object v0, v1
goto :goto_7
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/m;)Lcom/squareup/okhttp/internal/a/m;
.registers 3
iput-object p0, p1, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iput-object v0, p1, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
iput-object p1, v0, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;
return-object p1
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/m;I)V
.registers 9
const/16 v2, 0x800
const/4 v5, 0x0
iget v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v1, p1, Lcom/squareup/okhttp/internal/a/m;->b:I
sub-int/2addr v0, v1
add-int/2addr v0, p2
if-le v0, v2, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_11
iget v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
add-int/2addr v0, p2
if-le v0, v2, :cond_2d
iget-object v0, p1, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v1, p1, Lcom/squareup/okhttp/internal/a/m;->b:I
iget-object v2, p1, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v3, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v4, p1, Lcom/squareup/okhttp/internal/a/m;->b:I
sub-int/2addr v3, v4
invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v1, p1, Lcom/squareup/okhttp/internal/a/m;->b:I
sub-int/2addr v0, v1
iput v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
iput v5, p1, Lcom/squareup/okhttp/internal/a/m;->b:I
:cond_2d
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v1, p0, Lcom/squareup/okhttp/internal/a/m;->b:I
iget-object v2, p1, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v3, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
add-int/2addr v0, p2
iput v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v0, p0, Lcom/squareup/okhttp/internal/a/m;->b:I
add-int/2addr v0, p2
iput v0, p0, Lcom/squareup/okhttp/internal/a/m;->b:I
return-void
.end method