.class final Lcom/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Ljava/lang/Runnable;
.method constructor <init>(Lcom/a/a/bf;Ljava/lang/Runnable;)V
.registers 3
iput-object p2, p0, Lcom/a/a/k;->a:Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/a/a/k;->a:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Failed to execute task."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method