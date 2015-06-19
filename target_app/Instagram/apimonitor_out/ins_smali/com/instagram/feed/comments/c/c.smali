.class public final Lcom/instagram/feed/comments/c/c;
.super Lcom/instagram/api/j/g;
.source "FetchNextPageCommentsRequest.java"
.field private a:Lcom/instagram/feed/d/l;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method public final a(Lcom/instagram/api/j/q;)V
.registers 3
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->J()V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 8
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->n()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->n()J
move-result-wide v2
const-wide/16 v4, -0x2
cmp-long v2, v2, v4
if-nez v2, :cond_3e
iget-object v2, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->s()Lcom/instagram/feed/d/e;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/d/e;->a()I
move-result v2
if-lez v2, :cond_3e
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->s()Lcom/instagram/feed/d/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
:cond_3e
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-lez v2, :cond_4d
const-string v2, "max_id"
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v2, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_4d
const-string v0, "page"
iget-object v1, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->o()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->I()V
invoke-virtual {p0}, Lcom/instagram/feed/comments/c/c;->h()V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 5
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-static {p1}, Lcom/instagram/feed/d/l;->d(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0, p2}, Lcom/instagram/feed/d/l;->b(Lcom/fasterxml/jackson/a/l;)V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "media/%s/comments/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method public final n()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/comments/c/c;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->K()V
return-void
.end method