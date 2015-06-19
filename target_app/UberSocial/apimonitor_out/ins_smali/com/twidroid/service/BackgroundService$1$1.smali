.class  Lcom/twidroid/service/BackgroundService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/service/BackgroundService$1;
.method constructor <init>(Lcom/twidroid/service/BackgroundService$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/service/BackgroundService$1$1;->a:Lcom/twidroid/service/BackgroundService$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/twidroid/service/BackgroundService$1$1;->a:Lcom/twidroid/service/BackgroundService$1;
iget-object v0, v0, Lcom/twidroid/service/BackgroundService$1;->a:Lcom/twidroid/service/BackgroundService;
invoke-virtual {v0}, Lcom/twidroid/service/BackgroundService;->c()V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_7
.end method