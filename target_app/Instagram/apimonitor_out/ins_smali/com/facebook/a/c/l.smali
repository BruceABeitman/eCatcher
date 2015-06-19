.class public final Lcom/facebook/a/c/l;
.super Ljava/lang/Object;
.source "SimpleTraceLogger.java"
.field public final a:Ljava/lang/String;
.field public final b:J
.method public final toString()Ljava/lang/String;
.registers 6
const-string v0, "[%d] %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-wide v3, p0, Lcom/facebook/a/c/l;->b:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/facebook/a/c/l;->a:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method