.class final Lcom/millennialmedia/android/cp$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/cp$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
new-instance v0, Lcom/millennialmedia/android/aw;
invoke-direct {v0}, Lcom/millennialmedia/android/aw;-><init>()V
:try_start_5
iget-object v1, p0, Lcom/millennialmedia/android/cp$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
sget-object v1, Lcom/millennialmedia/android/cp;->l:Ljava/lang/String;
const-string v2, "Error logging event: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
.end method