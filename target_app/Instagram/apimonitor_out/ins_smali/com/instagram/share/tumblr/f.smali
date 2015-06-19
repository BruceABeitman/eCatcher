.class public final Lcom/instagram/share/tumblr/f;
.super Ljava/lang/Object;
.source "XAuthResponse.java"
.field private final a:Lcom/instagram/share/tumblr/g;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/share/tumblr/g;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/instagram/share/tumblr/g;-><init>(B)V
iput-object v0, p0, Lcom/instagram/share/tumblr/f;->a:Lcom/instagram/share/tumblr/g;
return-void
.end method
.method public final a()Lcom/instagram/share/tumblr/e;
.registers 4
new-instance v0, Lcom/instagram/share/tumblr/e;
iget-object v1, p0, Lcom/instagram/share/tumblr/f;->a:Lcom/instagram/share/tumblr/g;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/instagram/share/tumblr/e;-><init>(Lcom/instagram/share/tumblr/g;B)V
return-object v0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
.registers 3
iget-object v0, p0, Lcom/instagram/share/tumblr/f;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0, p1}, Lcom/instagram/share/tumblr/g;->a(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
.registers 3
iget-object v0, p0, Lcom/instagram/share/tumblr/f;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0, p1}, Lcom/instagram/share/tumblr/g;->b(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
return-object p0
.end method
.method public final c(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
.registers 3
iget-object v0, p0, Lcom/instagram/share/tumblr/f;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0, p1}, Lcom/instagram/share/tumblr/g;->c(Lcom/instagram/share/tumblr/g;Ljava/lang/String;)Ljava/lang/String;
return-object p0
.end method