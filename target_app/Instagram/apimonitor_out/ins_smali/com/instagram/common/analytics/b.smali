.class public Lcom/instagram/common/analytics/b;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/instagram/common/analytics/n;
.field private c:J
.field private d:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/analytics/n;
invoke-direct {v0}, Lcom/instagram/common/analytics/n;-><init>()V
iput-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/common/analytics/b;->c:J
iput-object p1, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;
if-eqz p2, :cond_1a
invoke-interface {p2}, Lcom/instagram/common/analytics/e;->i_()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;
:cond_1a
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/common/analytics/b;
.registers 3
const-string v0, "pk"
invoke-virtual {p0, v0, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
.registers 5
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;D)V
return-object p0
.end method
.method public final a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
.registers 4
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;I)V
return-object p0
.end method
.method public final a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
.registers 5
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;J)V
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
.registers 4
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public final a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
.registers 4
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;Z)V
return-object p0
.end method
.method public final a()V
.registers 2
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0, p1}, Lcom/instagram/common/analytics/n;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final d()J
.registers 3
iget-wide v0, p0, Lcom/instagram/common/analytics/b;->c:J
return-wide v0
.end method
.method final e()Z
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
invoke-virtual {v0}, Lcom/instagram/common/analytics/n;->a()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method final f()Lcom/instagram/common/analytics/n;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{\n| extra = {\n"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/n;
const-string v2, "|   "
invoke-virtual {v1, v2}, Lcom/instagram/common/analytics/n;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "| }\n| module = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n| name = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n| time = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/instagram/common/analytics/b;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method