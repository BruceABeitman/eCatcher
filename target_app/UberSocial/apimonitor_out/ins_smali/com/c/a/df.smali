.class  Lcom/c/a/df;
.super Ljava/lang/Object;
.implements Lcom/c/a/dj;
.field final a:Lcom/c/a/ct;
.method constructor <init>(Lcom/c/a/ct;)V
.registers 2
iput-object p1, p0, Lcom/c/a/df;->a:Lcom/c/a/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(DD)D
.registers 9
invoke-static {p1, p2, p3, p4}, Lcom/c/a/ct;->a(DD)D
move-result-wide v0
const-wide/high16 v2, 0x3ff0
add-double/2addr v0, v2
return-wide v0
.end method