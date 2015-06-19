.class final Lcom/tencent/mm/sdk/b/b;
.super Ljava/lang/Object;
.implements Lcom/tencent/mm/sdk/b/a$a;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final b()I
.registers 2
invoke-static {}, Lcom/tencent/mm/sdk/b/a;->a()I
move-result v0
return v0
.end method
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/tencent/mm/sdk/b/a;->a()I
move-result v0
const/4 v1, 0x2
if-gt v0, v1, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public final e(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/tencent/mm/sdk/b/a;->a()I
move-result v0
const/4 v1, 0x1
if-gt v0, v1, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method
.method public final f(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/tencent/mm/sdk/b/a;->a()I
move-result v0
const/4 v1, 0x4
if-gt v0, v1, :cond_a
invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
return-void
.end method