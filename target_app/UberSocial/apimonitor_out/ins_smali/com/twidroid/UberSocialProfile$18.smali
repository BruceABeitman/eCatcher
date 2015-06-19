.class  Lcom/twidroid/UberSocialProfile$18;
.super Lcom/ubermedia/net/f;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0, p2, p3, p4}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
new-instance v1, Lcom/twidroid/UberSocialProfile$18$1;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$18$1;-><init>(Lcom/twidroid/UberSocialProfile$18;)V
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method