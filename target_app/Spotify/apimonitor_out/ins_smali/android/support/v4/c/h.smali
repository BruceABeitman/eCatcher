.class final Landroid/support/v4/c/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.field final a:I
.field  b:I
.field  c:I
.field  d:Z
.field final synthetic e:Landroid/support/v4/c/g;
.method constructor <init>(Landroid/support/v4/c/g;I)V
.registers 4
iput-object p1, p0, Landroid/support/v4/c/h;->e:Landroid/support/v4/c/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/c/h;->d:Z
iput p2, p0, Landroid/support/v4/c/h;->a:I
invoke-virtual {p1}, Landroid/support/v4/c/g;->a()I
move-result v0
iput v0, p0, Landroid/support/v4/c/h;->b:I
return-void
.end method
.method public final hasNext()Z
.registers 3
iget v0, p0, Landroid/support/v4/c/h;->c:I
iget v1, p0, Landroid/support/v4/c/h;->b:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final next()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/c/h;->e:Landroid/support/v4/c/g;
iget v1, p0, Landroid/support/v4/c/h;->c:I
iget v2, p0, Landroid/support/v4/c/h;->a:I
invoke-virtual {v0, v1, v2}, Landroid/support/v4/c/g;->a(II)Ljava/lang/Object;
move-result-object v0
iget v1, p0, Landroid/support/v4/c/h;->c:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Landroid/support/v4/c/h;->c:I
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/c/h;->d:Z
return-object v0
.end method
.method public final remove()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/c/h;->d:Z
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget v0, p0, Landroid/support/v4/c/h;->c:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/c/h;->c:I
iget v0, p0, Landroid/support/v4/c/h;->b:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/c/h;->b:I
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/c/h;->d:Z
iget-object v0, p0, Landroid/support/v4/c/h;->e:Landroid/support/v4/c/g;
iget v1, p0, Landroid/support/v4/c/h;->c:I
invoke-virtual {v0, v1}, Landroid/support/v4/c/g;->a(I)V
return-void
.end method