.class final Lcom/twidroid/net/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/util/Map;
.field final synthetic c:Lcom/ubermedia/net/b/c;
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/b/c;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/a/c$1;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/net/a/c$1;->b:Ljava/util/Map;
iput-object p3, p0, Lcom/twidroid/net/a/c$1;->c:Lcom/ubermedia/net/b/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/net/a/c$1;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/net/a/c$1;->b:Ljava/util/Map;
iget-object v2, p0, Lcom/twidroid/net/a/c$1;->c:Lcom/ubermedia/net/b/c;
invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/b/c;)V
:try_end_9
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_9} :catch_a
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_14
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
goto :goto_9
:catch_f
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_9
:catch_14
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
.end method