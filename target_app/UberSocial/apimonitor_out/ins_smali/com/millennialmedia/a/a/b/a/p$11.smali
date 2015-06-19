.class final Lcom/millennialmedia/a/a/b/a/p$11;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URI;
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v1
sget-object v2, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v1, v2, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
:cond_c
:goto_c
return-object v0
:cond_d
:try_start_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v1
const-string v2, "null"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c
new-instance v0, Ljava/net/URI;
invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
:try_end_1e
.catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_1e} :catch_1f
goto :goto_c
:catch_1f
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/n;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/net/URI;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$11;->a(Lcom/millennialmedia/a/a/d/d;Ljava/net/URI;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/net/URI;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
return-void
:cond_7
invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$11;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/net/URI;
move-result-object v0
return-object v0
.end method