.class public final Lcom/tencent/map/b/u;
.super Ljava/lang/Object;
.source "ProGuard"
.field public a:[B
.field public b:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "GBK"
iput-object v0, p0, Lcom/tencent/map/b/u;->b:Ljava/lang/String;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 4
:try_start_0
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/map/b/u;->a:[B
iget-object v2, p0, Lcom/tencent/map/b/u;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-object v0
:catch_a
move-exception v0
const-string/jumbo v0, ""
goto :goto_9
.end method