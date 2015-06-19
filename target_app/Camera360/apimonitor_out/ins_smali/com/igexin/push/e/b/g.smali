.class public Lcom/igexin/push/e/b/g;
.super Lcom/igexin/push/e/b/h;
.field private static b:Lcom/igexin/push/e/b/g;
.field private a:Z
.method public constructor <init>()V
.registers 3
const-wide/32 v0, 0x36ee80
invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/h;-><init>(J)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/push/e/b/g;->a:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/e/b/g;->A:Z
return-void
.end method
.method public static g()Lcom/igexin/push/e/b/g;
.registers 1
sget-object v0, Lcom/igexin/push/e/b/g;->b:Lcom/igexin/push/e/b/g;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/e/b/g;
invoke-direct {v0}, Lcom/igexin/push/e/b/g;-><init>()V
sput-object v0, Lcom/igexin/push/e/b/g;->b:Lcom/igexin/push/e/b/g;
:cond_b
sget-object v0, Lcom/igexin/push/e/b/g;->b:Lcom/igexin/push/e/b/g;
return-object v0
.end method
.method public a_()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 2
invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V
iget-boolean v0, p0, Lcom/igexin/push/e/b/g;->x:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/igexin/push/e/b/g;->h()V
:cond_a
return-void
.end method
.method public h()V
.registers 11
const/16 v9, 0xc
const/4 v7, 0x5
const/16 v6, 0xb
const/4 v8, 0x1
const/4 v5, 0x0
const-wide/32 v0, 0x36ee80
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sget v4, Lcom/igexin/push/a/j;->f:I
if-eqz v4, :cond_cf
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(J)Z
move-result v1
if-eqz v1, :cond_9b
iget-boolean v1, p0, Lcom/igexin/push/e/b/g;->a:Z
if-nez v1, :cond_3b
iput-boolean v8, p0, Lcom/igexin/push/e/b/g;->a:Z
new-instance v1, Lcom/igexin/push/d/a;
invoke-direct {v1}, Lcom/igexin/push/d/a;-><init>()V
sget-object v4, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;
invoke-virtual {v1, v4}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
:cond_3b
sget v1, Lcom/igexin/push/a/j;->e:I
sget v4, Lcom/igexin/push/a/j;->f:I
add-int/2addr v1, v4
const/16 v4, 0x18
if-le v1, v4, :cond_92
sget v1, Lcom/igexin/push/a/j;->e:I
sget v4, Lcom/igexin/push/a/j;->f:I
add-int/2addr v1, v4
add-int/lit8 v1, v1, -0x18
invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V
:goto_4e
invoke-virtual {v0, v9, v5}, Ljava/util/Calendar;->set(II)V
const/16 v1, 0xd
invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v4
cmp-long v1, v4, v2
if-gez v1, :cond_61
invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V
:cond_61
:goto_61
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v0
sub-long/2addr v0, v2
:cond_66
:goto_66
sget-wide v4, Lcom/igexin/push/a/j;->g:J
add-long v6, v2, v0
cmp-long v4, v4, v6
if-lez v4, :cond_8c
sget-wide v0, Lcom/igexin/push/a/j;->g:J
sub-long/2addr v0, v2
iget-boolean v2, p0, Lcom/igexin/push/e/b/g;->a:Z
if-nez v2, :cond_8c
iput-boolean v8, p0, Lcom/igexin/push/e/b/g;->a:Z
new-instance v2, Lcom/igexin/push/d/a;
invoke-direct {v2}, Lcom/igexin/push/d/a;-><init>()V
sget-object v3, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;
invoke-virtual {v2, v3}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
:cond_8c
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/g;->a(JLjava/util/concurrent/TimeUnit;)I
return-void
:cond_92
sget v1, Lcom/igexin/push/a/j;->e:I
sget v4, Lcom/igexin/push/a/j;->f:I
add-int/2addr v1, v4
invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V
goto :goto_4e
:cond_9b
iget-boolean v1, p0, Lcom/igexin/push/e/b/g;->a:Z
if-eqz v1, :cond_b6
iput-boolean v5, p0, Lcom/igexin/push/e/b/g;->a:Z
new-instance v1, Lcom/igexin/push/d/a;
invoke-direct {v1}, Lcom/igexin/push/d/a;-><init>()V
sget-object v4, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;
invoke-virtual {v1, v4}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v4
invoke-virtual {v4}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
:cond_b6
sget v1, Lcom/igexin/push/a/j;->e:I
invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V
invoke-virtual {v0, v9, v5}, Ljava/util/Calendar;->set(II)V
const/16 v1, 0xd
invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v4
cmp-long v1, v4, v2
if-gez v1, :cond_61
invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V
goto :goto_61
:cond_cf
iget-boolean v4, p0, Lcom/igexin/push/e/b/g;->a:Z
if-eqz v4, :cond_66
iput-boolean v5, p0, Lcom/igexin/push/e/b/g;->a:Z
new-instance v4, Lcom/igexin/push/d/a;
invoke-direct {v4}, Lcom/igexin/push/d/a;-><init>()V
sget-object v5, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;
invoke-virtual {v4, v5}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v5
invoke-virtual {v5}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v5
invoke-virtual {v5, v4}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
goto/16 :goto_66
.end method
.method protected i()V
.registers 2
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->A()V
return-void
.end method