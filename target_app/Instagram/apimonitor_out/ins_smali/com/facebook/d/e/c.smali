.class public Lcom/facebook/d/e/c;
.super Ljava/lang/Object;
.source "ObjectPool.java"
.implements Lcom/facebook/d/e/b;
.field  a:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/d/e/c;->a:Ljava/lang/Class;
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/facebook/d/e/c;->a:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_5
.catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_5} :catch_7
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_13
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
invoke-static {}, Lcom/facebook/d/e/a;->b()Ljava/lang/Class;
move-result-object v1
const-string v2, "Couldn\'t instantiate object"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_11
const/4 v0, 0x0
goto :goto_6
:catch_13
move-exception v0
invoke-static {}, Lcom/facebook/d/e/a;->b()Ljava/lang/Class;
move-result-object v1
const-string v2, "Couldn\'t instantiate object"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_11
.end method
.method public a(Ljava/lang/Object;)V
.registers 2
return-void
.end method