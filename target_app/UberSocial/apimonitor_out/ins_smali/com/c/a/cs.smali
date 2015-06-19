.class final Lcom/c/a/cs;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/a/d;Lcom/c/a/d;)I
.registers 7
invoke-static {p1}, Lcom/c/a/d;->c(Lcom/c/a/d;)J
move-result-wide v0
invoke-static {p2}, Lcom/c/a/d;->c(Lcom/c/a/d;)J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_e
const/4 v0, -0x1
:goto_d
return v0
:cond_e
invoke-static {p1}, Lcom/c/a/d;->c(Lcom/c/a/d;)J
move-result-wide v0
invoke-static {p2}, Lcom/c/a/d;->c(Lcom/c/a/d;)J
move-result-wide v2
cmp-long v0, v0, v2
if-lez v0, :cond_1c
const/4 v0, 0x1
goto :goto_d
:cond_1c
const/4 v0, 0x0
goto :goto_d
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/c/a/d;
check-cast p2, Lcom/c/a/d;
invoke-virtual {p0, p1, p2}, Lcom/c/a/cs;->a(Lcom/c/a/d;Lcom/c/a/d;)I
move-result v0
return v0
.end method