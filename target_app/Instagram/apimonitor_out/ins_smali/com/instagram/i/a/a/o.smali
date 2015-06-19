.class final Lcom/instagram/i/a/a/o;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserFollow.java"
.implements Lcom/instagram/user/follow/g;
.field final synthetic a:Lcom/instagram/i/a/a/a;
.field final synthetic b:Lcom/instagram/i/d/c;
.method constructor <init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/i/a/a/o;->a:Lcom/instagram/i/a/a/a;
iput-object p2, p0, Lcom/instagram/i/a/a/o;->b:Lcom/instagram/i/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/user/c/c;)V
.registers 4
iget-object v0, p0, Lcom/instagram/i/a/a/o;->a:Lcom/instagram/i/a/a/a;
iget-object v1, p0, Lcom/instagram/i/a/a/o;->b:Lcom/instagram/i/d/c;
invoke-virtual {v1}, Lcom/instagram/i/d/c;->i()Lcom/instagram/user/c/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->a(Lcom/instagram/user/c/a;)V
return-void
.end method