.class public Lcom/igexin/push/core/a/j;
.super Lcom/igexin/push/core/a/a;
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
.registers 11
const-wide/32 v7, 0x5265c00
const-wide/16 v5, 0x0
const/4 v4, 0x1
instance-of v0, p1, Lcom/igexin/push/c/c/k;
if-eqz v0, :cond_c9
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-nez v0, :cond_c9
invoke-static {}, Lcom/igexin/push/core/c/q;->c()V
check-cast p1, Lcom/igexin/push/c/c/k;
iget-boolean v0, p1, Lcom/igexin/push/c/c/k;->a:Z
if-eqz v0, :cond_ca
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "loginRsp|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|success"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->g()V
sput-boolean v4, Lcom/igexin/push/core/g;->o:Z
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->m()V
sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
if-nez v0, :cond_52
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->h()V
:try_start_52
:cond_52
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->J:J
sub-long/2addr v0, v2
sub-long/2addr v0, v7
cmp-long v0, v0, v5
if-lez v0, :cond_65
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->j()V
:cond_65
:try_end_65
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_10e
:goto_65
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->I:J
sub-long/2addr v0, v2
sub-long/2addr v0, v7
cmp-long v0, v0, v5
if-lez v0, :cond_87
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->i()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sput-wide v0, Lcom/igexin/push/core/g;->I:J
:cond_87
sget-boolean v0, Lcom/igexin/push/core/g;->p:Z
if-nez v0, :cond_94
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->l()V
sput-boolean v4, Lcom/igexin/push/core/g;->p:Z
:cond_94
:try_start_94
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->N:J
sub-long/2addr v0, v2
sub-long/2addr v0, v7
cmp-long v0, v0, v5
if-lez v0, :cond_b7
new-instance v0, Lcom/igexin/push/e/a/c;
new-instance v1, Lcom/igexin/push/core/d/d;
invoke-static {}, Lcom/igexin/push/core/g;->a()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/igexin/push/core/d/d;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1}, Lcom/igexin/push/e/a/c;-><init>(Lcom/igexin/push/e/a/b;)V
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
:try_end_b7
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b7} :catch_10c
:goto_b7
:cond_b7
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->b()V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/d/c;->a()Z
:cond_c9
:goto_c9
return v4
:cond_ca
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "loginRsp|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|failed"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
invoke-virtual {v0, v5, v6}, Lcom/igexin/push/core/c/f;->a(J)Z
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->e()V
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/c/b/b;
invoke-direct {v1}, Lcom/igexin/push/c/b/b;-><init>()V
invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V
goto :goto_c9
:catch_10c
move-exception v0
goto :goto_b7
:catch_10e
move-exception v0
goto/16 :goto_65
.end method