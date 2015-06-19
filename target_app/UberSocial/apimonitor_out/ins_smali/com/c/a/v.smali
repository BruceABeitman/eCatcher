.class  Lcom/c/a/v;
.super Ljava/lang/Object;
.implements Lcom/c/y;
.field final a:I
.field final b:Lcom/c/ba;
.field final c:J
.field final d:Lcom/c/a/dx;
.field private e:I
.field private f:Z
.method constructor <init>(Lcom/c/a/dx;ILcom/c/ba;J)V
.registers 7
iput-object p1, p0, Lcom/c/a/v;->d:Lcom/c/a/dx;
iput p2, p0, Lcom/c/a/v;->a:I
iput-object p3, p0, Lcom/c/a/v;->b:Lcom/c/ba;
iput-wide p4, p0, Lcom/c/a/v;->c:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/c/a/v;->e:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/c/a/v;->f:Z
return-void
.end method
.method public a(Lcom/c/ap;)Z
.registers 8
iget-boolean v1, p0, Lcom/c/a/v;->f:Z
iget v0, p0, Lcom/c/a/v;->e:I
iget v2, p0, Lcom/c/a/v;->a:I
add-int/lit8 v2, v2, -0x1
if-lt v0, v2, :cond_1a
invoke-interface {p1}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v0
iget-object v2, p0, Lcom/c/a/v;->b:Lcom/c/ba;
invoke-virtual {v0, v2}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v2
iget-wide v4, p0, Lcom/c/a/v;->c:J
cmp-long v0, v2, v4
if-gez v0, :cond_24
:cond_1a
const/4 v0, 0x1
:goto_1b
iput-boolean v0, p0, Lcom/c/a/v;->f:Z
iget v0, p0, Lcom/c/a/v;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/c/a/v;->e:I
return v1
:cond_24
const/4 v0, 0x0
goto :goto_1b
.end method
.method public bridge synthetic a(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Lcom/c/ap;
invoke-virtual {p0, p1}, Lcom/c/a/v;->a(Lcom/c/ap;)Z
move-result v0
return v0
.end method