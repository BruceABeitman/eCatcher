.class final Lcom/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Ljava/util/concurrent/Callable;
.method constructor <init>(Lcom/a/a/bf;Ljava/util/concurrent/Callable;)V
.registers 3
iput-object p2, p0, Lcom/a/a/m;->a:Ljava/util/concurrent/Callable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final call()Ljava/lang/Object;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/a/a/m;->a:Ljava/util/concurrent/Callable;
invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Failed to execute task."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_6
.end method