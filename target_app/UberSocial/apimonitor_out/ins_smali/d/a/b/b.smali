.class public Ld/a/b/b;
.super Ld/a/b;
.source "SourceFile"
.field private static final a:J = 0x1L
.field private transient b:Lorg/apache/http/client/HttpClient;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
iput-object v0, p0, Ld/a/b/b;->b:Lorg/apache/http/client/HttpClient;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Ld/a/b/b;->b:Lorg/apache/http/client/HttpClient;
return-void
.end method
.method protected a(Ljava/lang/String;)Ld/a/d/b;
.registers 4
new-instance v0, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v1, Ld/a/b/c;
invoke-direct {v1, v0}, Ld/a/b/c;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
return-object v1
.end method
.method protected a(Ld/a/d/b;)Ld/a/d/c;
.registers 4
iget-object v1, p0, Ld/a/b/b;->b:Lorg/apache/http/client/HttpClient;
invoke-interface {p1}, Ld/a/d/b;->g()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
new-instance v1, Ld/a/b/d;
invoke-direct {v1, v0}, Ld/a/b/d;-><init>(Lorg/apache/http/HttpResponse;)V
return-object v1
.end method
.method protected a(Ld/a/d/b;Ld/a/d/c;)V
.registers 4
if-eqz p2, :cond_11
invoke-interface {p2}, Ld/a/d/c;->d()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/HttpResponse;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
if-eqz v0, :cond_11
:try_start_e
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
:try_end_11
.catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12
:cond_11
:goto_11
return-void
:catch_12
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_11
.end method
.method public a(Lorg/apache/http/client/HttpClient;)V
.registers 2
iput-object p1, p0, Ld/a/b/b;->b:Lorg/apache/http/client/HttpClient;
return-void
.end method