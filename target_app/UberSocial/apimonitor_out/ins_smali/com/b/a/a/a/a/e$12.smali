.class  Lcom/b/a/a/a/a/e$12;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;I)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/e$12;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(I)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 11
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v1
const/16 v0, 0xff
int-to-double v2, p2
iget-wide v4, p0, Lcom/b/a/a/a/a/e$12;->b:D
cmpg-double v2, v2, v4
if-ltz v2, :cond_1b
int-to-double v2, p3
iget-wide v4, p0, Lcom/b/a/a/a/a/e$12;->b:D
cmpg-double v2, v2, v4
if-ltz v2, :cond_1b
int-to-double v2, p4
iget-wide v4, p0, Lcom/b/a/a/a/a/e$12;->b:D
cmpg-double v2, v2, v4
if-gez v2, :cond_1c
:cond_1b
const/4 v0, 0x0
:cond_1c
iput v0, v1, Lcom/b/a/a/a/a/m;->a:I
iput v0, v1, Lcom/b/a/a/a/a/m;->b:I
iput v0, v1, Lcom/b/a/a/a/a/m;->c:I
iput p1, v1, Lcom/b/a/a/a/a/m;->d:I
return-object v1
.end method