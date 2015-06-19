.class final Lcom/instagram/share/f/b;
.super Lcom/instagram/share/a/a;
.source "TwitterAccount.java"
.field final synthetic b:Lcom/instagram/share/f/a;
.method constructor <init>(Ljava/lang/String;Lcom/instagram/share/f/a;)V
.registers 3
iput-object p2, p0, Lcom/instagram/share/f/b;->b:Lcom/instagram/share/f/a;
invoke-direct {p0, p1}, Lcom/instagram/share/a/a;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "twitter_access_token_key"
iget-object v1, p0, Lcom/instagram/share/f/b;->b:Lcom/instagram/share/f/a;
invoke-virtual {v1}, Lcom/instagram/share/f/a;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "twitter_access_token_secret"
iget-object v1, p0, Lcom/instagram/share/f/b;->b:Lcom/instagram/share/f/a;
invoke-virtual {v1}, Lcom/instagram/share/f/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "twitter_username"
iget-object v1, p0, Lcom/instagram/share/f/b;->b:Lcom/instagram/share/f/a;
invoke-virtual {v1}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "share_to_twitter"
const-string v1, "1"
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method