.class final Lcom/millennialmedia/android/cp$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/bp;
.method constructor <init>(Lcom/millennialmedia/android/bp;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/cp$5;->a:Lcom/millennialmedia/android/bp;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/cp$5;->a:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/millennialmedia/android/cp$5;->a:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
if-eqz v0, :cond_17
:try_start_a
iget-object v0, p0, Lcom/millennialmedia/android/cp$5;->a:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
iget-object v1, p0, Lcom/millennialmedia/android/cp$5;->a:Lcom/millennialmedia/android/bp;
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;
move-result-object v1
invoke-interface {v0, v1}, Lcom/millennialmedia/android/df;->MMAdOverlayClosed(Lcom/millennialmedia/android/bo;)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
const-string v1, "MMSDK"
const-string v2, "Exception raised in your RequestListener: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_17
.end method