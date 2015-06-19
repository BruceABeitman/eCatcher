.class public Lcom/twidroid/net/d/a;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private a:Lcom/twidroid/net/d/d;
.field private b:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Lcom/twidroid/net/d/b;)Lcom/twidroid/net/d/c;
.registers 8
const/4 v5, 0x0
const/4 v0, 0x0
aget-object v0, p1, v0
:try_start_4
iget-object v1, v0, Lcom/twidroid/net/d/b;->b:Ljava/lang/String;
iput-object v1, p0, Lcom/twidroid/net/d/a;->b:Ljava/lang/String;
iget-object v1, v0, Lcom/twidroid/net/d/b;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v2, v0, Lcom/twidroid/net/d/b;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v1
if-nez v1, :cond_2e
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Error getting user profile"
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:catch_23
:try_end_23
.catch Lcom/ubermedia/net/a/a/a; {:try_start_4 .. :try_end_23} :catch_23
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_50
move-exception v0
move-object v1, v0
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
new-instance v0, Lcom/twidroid/net/d/c;
invoke-direct {v0, v5, v1}, Lcom/twidroid/net/d/c;-><init>(Lcom/twidroid/model/twitter/User;Ljava/lang/Exception;)V
:goto_2d
return-object v0
:cond_2e
:try_start_2e
iget-object v2, v0, Lcom/twidroid/net/d/b;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
iget-object v3, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v0, v0, Lcom/twidroid/net/d/b;->a:Lcom/twidroid/UberSocialApplication;
invoke-static {v0}, Lcom/twidroid/d/a;->b(Landroid/content/Context;)[I
move-result-object v0
const/4 v4, 0x0
aget v0, v0, v4
invoke-virtual {v2, v3, v0}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/twidroid/model/twitter/User;->i:Ljava/lang/String;
new-instance v0, Lcom/twidroid/net/d/c;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/d/c;-><init>(Lcom/twidroid/model/twitter/User;Ljava/lang/Exception;)V
:try_end_4f
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2e .. :try_end_4f} :catch_23
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4f} :catch_50
goto :goto_2d
:catch_50
move-exception v0
move-object v1, v0
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
new-instance v0, Lcom/twidroid/net/d/c;
invoke-direct {v0, v5, v1}, Lcom/twidroid/net/d/c;-><init>(Lcom/twidroid/model/twitter/User;Ljava/lang/Exception;)V
goto :goto_2d
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/net/d/b;
invoke-virtual {p0, p1}, Lcom/twidroid/net/d/a;->a([Lcom/twidroid/net/d/b;)Lcom/twidroid/net/d/c;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/net/d/c;)V
.registers 5
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/net/d/a;->a:Lcom/twidroid/net/d/d;
if-eqz v0, :cond_15
iget-object v0, p1, Lcom/twidroid/net/d/c;->a:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/net/d/a;->a:Lcom/twidroid/net/d/d;
iget-object v1, p1, Lcom/twidroid/net/d/c;->a:Lcom/twidroid/model/twitter/User;
invoke-interface {v0, v1}, Lcom/twidroid/net/d/d;->a(Lcom/twidroid/model/twitter/User;)V
:goto_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/d/a;->a:Lcom/twidroid/net/d/d;
:cond_15
return-void
:cond_16
iget-object v0, p0, Lcom/twidroid/net/d/a;->a:Lcom/twidroid/net/d/d;
iget-object v1, p1, Lcom/twidroid/net/d/c;->b:Ljava/lang/Exception;
iget-object v2, p0, Lcom/twidroid/net/d/a;->b:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/twidroid/net/d/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V
goto :goto_12
.end method
.method public a(Lcom/twidroid/net/d/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/d/a;->a:Lcom/twidroid/net/d/d;
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/net/d/c;
invoke-virtual {p0, p1}, Lcom/twidroid/net/d/a;->a(Lcom/twidroid/net/d/c;)V
return-void
.end method