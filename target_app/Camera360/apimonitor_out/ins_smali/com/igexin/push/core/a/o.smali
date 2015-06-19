.class public Lcom/igexin/push/core/a/o;
.super Lcom/igexin/push/core/a/a;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/o;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V
return-void
.end method
.method public a(Lcom/igexin/a/a/d/d;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public a(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/igexin/push/c/c/o;
if-eqz v2, :cond_ab
check-cast p1, Lcom/igexin/push/c/c/o;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "registerReq|"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p1, Lcom/igexin/push/c/c/o;->a:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "|"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-wide v3, Lcom/igexin/push/core/g;->t:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
iget-wide v2, p1, Lcom/igexin/push/c/c/o;->a:J
sget-wide v4, Lcom/igexin/push/core/g;->t:J
cmp-long v2, v2, v4
if-eqz v2, :cond_46
sput-boolean v0, Lcom/igexin/push/core/g;->p:Z
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
iget-wide v2, p1, Lcom/igexin/push/c/c/o;->a:J
invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/f;->a(J)Z
const-wide/16 v2, 0x0
sput-wide v2, Lcom/igexin/push/core/g;->I:J
move v0, v1
:cond_46
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/igexin/push/core/a/f;->c()Lcom/igexin/push/c/c/i;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "loginReqAfterRegister|"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, v2, Lcom/igexin/push/c/c/i;->a:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "newtoken|"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-wide v4, Lcom/igexin/push/core/g;->t:J
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "S-"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-wide v5, v2, Lcom/igexin/push/c/c/i;->a:J
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4, v2}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
if-eqz v0, :cond_ab
:cond_ab
return v1
.end method