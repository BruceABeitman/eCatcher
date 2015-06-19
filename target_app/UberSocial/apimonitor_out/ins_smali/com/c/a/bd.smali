.class abstract Lcom/c/a/bd;
.super Lcom/c/a/ay;
.implements Lcom/c/a/ak;
.method protected constructor <init>(Lcom/c/b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/c/a/ay;-><init>(Lcom/c/b;)V
return-void
.end method
.method public a(Lcom/c/a/j;IILcom/c/a/q;)V
.registers 12
sget-object v2, Lcom/c/a/s;->a:Lcom/c/a/s;
mul-int/lit16 v0, p2, 0x3e8
int-to-long v3, v0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v6, p4
invoke-virtual/range {v0 .. v6}, Lcom/c/a/bd;->a(Lcom/c/a/j;Lcom/c/a/s;JILcom/c/a/q;)V
return-void
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x1
return v0
.end method