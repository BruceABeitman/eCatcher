.class public final Lcom/instagram/feed/comments/b/a;
.super Ljava/lang/Object;
.source "CommentRemover.java"
.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V
.registers 11
new-instance v0, Lcom/instagram/feed/comments/c/a;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/comments/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V
invoke-static {p2, v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/c;)V
return-void
.end method
.method public static a(Lcom/instagram/feed/d/b;)V
.registers 1
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->l()V
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->m()V
return-void
.end method
.method public static a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/c;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v1, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;
if-ne v0, v1, :cond_f
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->l()V
invoke-virtual {p1}, Lcom/instagram/api/j/c;->h()V
:goto_e
return-void
:cond_f
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v1, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;
if-ne v0, v1, :cond_1b
invoke-static {p0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V
goto :goto_e
:cond_1b
sget-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;
invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V
goto :goto_e
.end method