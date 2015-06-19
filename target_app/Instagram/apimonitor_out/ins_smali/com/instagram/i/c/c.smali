.class final Lcom/instagram/i/c/c;
.super Lcom/instagram/api/j/f;
.source "NewsfeedFollowRequestsFragment.java"
.field final synthetic a:Lcom/instagram/i/c/a;
.method constructor <init>(Lcom/instagram/i/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/c;->a:Lcom/instagram/i/c/a;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/c;->a:Lcom/instagram/i/c/a;
invoke-static {v0}, Lcom/instagram/i/c/a;->a(Lcom/instagram/i/c/a;)Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/a/c;->notifyDataSetChanged()V
return-void
.end method