.class final Lcom/millennialmedia/a/a/b/a/p$7;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/math/BigInteger;
.registers 4
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_c
return-object v0
:try_start_d
:cond_d
new-instance v0, Ljava/math/BigInteger;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_17
goto :goto_c
:catch_17
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/w;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/math/BigInteger;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$7;->a(Lcom/millennialmedia/a/a/d/d;Ljava/math/BigInteger;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/math/BigInteger;)V
.registers 3
invoke-virtual {p1, p2}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/d;
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$7;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method