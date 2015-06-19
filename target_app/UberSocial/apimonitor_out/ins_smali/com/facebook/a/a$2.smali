.class  Lcom/facebook/a/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/os/Bundle;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/facebook/a/b;
.field final synthetic e:Ljava/lang/Object;
.field final synthetic f:Lcom/facebook/a/a;
.method constructor <init>(Lcom/facebook/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V
.registers 7
iput-object p1, p0, Lcom/facebook/a/a$2;->f:Lcom/facebook/a/a;
iput-object p2, p0, Lcom/facebook/a/a$2;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/a/a$2;->b:Landroid/os/Bundle;
iput-object p4, p0, Lcom/facebook/a/a$2;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/a/a$2;->d:Lcom/facebook/a/b;
iput-object p6, p0, Lcom/facebook/a/a$2;->e:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/facebook/a/a$2;->f:Lcom/facebook/a/a;
iget-object v0, v0, Lcom/facebook/a/a;->a:Lcom/facebook/a/e;
iget-object v1, p0, Lcom/facebook/a/a$2;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/a/a$2;->b:Landroid/os/Bundle;
iget-object v3, p0, Lcom/facebook/a/a$2;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/e;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/a/a$2;->d:Lcom/facebook/a/b;
iget-object v2, p0, Lcom/facebook/a/a$2;->e:Ljava/lang/Object;
invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_15
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_15} :catch_16
.catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_15} :catch_1f
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_28
:goto_15
return-void
:catch_16
move-exception v0
iget-object v1, p0, Lcom/facebook/a/a$2;->d:Lcom/facebook/a/b;
iget-object v2, p0, Lcom/facebook/a/a$2;->e:Ljava/lang/Object;
invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
goto :goto_15
:catch_1f
move-exception v0
iget-object v1, p0, Lcom/facebook/a/a$2;->d:Lcom/facebook/a/b;
iget-object v2, p0, Lcom/facebook/a/a$2;->e:Ljava/lang/Object;
invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
goto :goto_15
:catch_28
move-exception v0
iget-object v1, p0, Lcom/facebook/a/a$2;->d:Lcom/facebook/a/b;
iget-object v2, p0, Lcom/facebook/a/a$2;->e:Ljava/lang/Object;
invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/io/IOException;Ljava/lang/Object;)V
goto :goto_15
.end method