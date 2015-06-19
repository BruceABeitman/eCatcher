.class public final Lcom/instagram/f/a/a/h;
.super Lcom/instagram/api/j/b;
.source "DeleteDirectShareCommentRequest.java"
.field private final a:Lcom/instagram/feed/d/b;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V
.registers 6
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/f/a/a/h;->a:Lcom/instagram/feed/d/b;
return-void
.end method
.method private g()Ljava/lang/Void;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/a/h;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->m()V
const/4 v0, 0x0
return-object v0
.end method
.method public final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/f/a/a/h;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->n()V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/f/a/a/h;->g()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "direct_share/%s/comment/%s/delete/"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/f/a/a/h;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v3}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/instagram/f/a/a/h;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v3}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method