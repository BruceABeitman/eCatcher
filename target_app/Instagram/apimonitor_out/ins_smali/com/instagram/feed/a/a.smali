.class public abstract Lcom/instagram/feed/a/a;
.super Lcom/instagram/api/j/g;
.source "MediaFeedRequest.java"
.field private a:Z
.field private b:Lcom/instagram/feed/g/a;
.field private e:Lcom/instagram/feed/f/a;
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILcom/instagram/api/j/f;)V
.registers 6
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;
move-result-object v1
invoke-direct {p0, v0, v1, p2, p3}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/feed/a/a;->a:Z
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
.registers 8
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;
move-result-object v1
invoke-direct {p0, v0, v1, p4, p5}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/feed/a/a;->a:Z
iput-object p2, p0, Lcom/instagram/feed/a/a;->b:Lcom/instagram/feed/g/a;
iput-object p3, p0, Lcom/instagram/feed/a/a;->e:Lcom/instagram/feed/f/a;
return-void
.end method
.method protected static b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
.registers 2
invoke-virtual {p0}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/a/b;
if-nez v0, :cond_10
new-instance v0, Lcom/instagram/feed/a/b;
invoke-direct {v0}, Lcom/instagram/feed/a/b;-><init>()V
invoke-virtual {p0, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
:cond_10
return-object v0
.end method
.method public final a(Lcom/instagram/api/j/q;)V
.registers 7
invoke-virtual {p1}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/a/b;
if-eqz v0, :cond_62
invoke-virtual {v0}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_10
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/feed/d/l;
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->Z()Z
move-result v3
if-eqz v3, :cond_10
const-string v3, "delivery"
iget-object v4, p0, Lcom/instagram/feed/a/a;->b:Lcom/instagram/feed/g/a;
invoke-static {v3, v1, v4}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
goto :goto_10
:cond_2a
iget-boolean v1, p0, Lcom/instagram/feed/a/a;->a:Z
if-nez v1, :cond_5f
iget-object v1, p0, Lcom/instagram/feed/a/a;->d:Landroid/content/Context;
invoke-static {v1}, Lcom/instagram/creation/c/a;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_5f
invoke-virtual {v0}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_3e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z
move-result v2
if-eqz v2, :cond_3e
invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/feed/a/a;->l()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/common/e/c/a;->a(Ljava/lang/String;)V
:cond_5f
invoke-static {p1}, Lcom/instagram/g/c;->a(Lcom/instagram/api/j/j;)V
:cond_62
return-void
.end method
.method protected a(Lcom/instagram/common/a/c/b;)V
.registers 4
iget-boolean v0, p0, Lcom/instagram/feed/a/a;->a:Z
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/instagram/feed/a/a;->e:Lcom/instagram/feed/f/a;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/instagram/feed/a/a;->e:Lcom/instagram/feed/f/a;
invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;
move-result-object v0
iget-object v1, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;
if-eqz v1, :cond_1d
iget-object v0, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/feed/a/a;->e:Lcom/instagram/feed/f/a;
invoke-virtual {v1}, Lcom/instagram/feed/f/a;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
return-void
.end method
.method public a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 11
const/4 v2, 0x0
const-string v0, "items"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_74
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v3
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_16
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v5, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v1, v5, :cond_4e
invoke-static {p2}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;
move-result-object v1
if-eqz v1, :cond_4e
iget-object v5, p0, Lcom/instagram/feed/a/a;->b:Lcom/instagram/feed/g/a;
if-eqz v5, :cond_4a
iget-object v5, p0, Lcom/instagram/feed/a/a;->b:Lcom/instagram/feed/g/a;
invoke-interface {v5}, Lcom/instagram/feed/g/a;->n_()Z
move-result v5
if-eqz v5, :cond_4a
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->Z()Z
move-result v5
if-eqz v5, :cond_4a
invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;
move-result-object v5
invoke-virtual {v5, v1}, Lcom/instagram/feed/g/b;->a(Lcom/instagram/feed/d/l;)Z
move-result v5
if-eqz v5, :cond_43
invoke-static {v1}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;)V
:cond_43
if-nez v0, :cond_4a
iget-boolean v5, p0, Lcom/instagram/feed/a/a;->a:Z
if-nez v5, :cond_4a
move-object v0, v1
:cond_4a
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_4e
if-eqz v0, :cond_6a
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Lcom/instagram/k/b/a;->D()Ljava/lang/String;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_6f
move v0, v2
:goto_67
invoke-virtual {v1, v5, v0}, Lcom/instagram/k/b/a;->b(Ljava/lang/String;Z)V
:cond_6a
invoke-virtual {v3, v4}, Lcom/instagram/feed/a/b;->a(Ljava/util/List;)V
:goto_6d
const/4 v2, 0x1
:cond_6e
return v2
:cond_6f
invoke-virtual {v1}, Lcom/instagram/k/b/a;->E()Z
move-result v0
goto :goto_67
:cond_74
const-string v0, "more_available"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/a/b;->a(Z)V
goto :goto_6d
:cond_8b
const-string v0, "next_max_id"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a2
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/a/b;->a(Ljava/lang/String;)V
goto :goto_6d
:cond_a2
const-string v0, "meta"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b1
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
goto :goto_6d
:cond_b1
const-string v0, "auto_load_more_enabled"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c7
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
invoke-virtual {v0}, Lcom/instagram/feed/a/b;->d()V
goto :goto_6d
:cond_c7
const-string v0, "live_timestamp"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6e
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/feed/a/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/a/b;->a(Ljava/lang/Integer;)V
goto :goto_6d
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/instagram/feed/a/a;->e()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected abstract e()Ljava/lang/String;
.end method
.method public final m()Ljava/util/List;
.registers 5
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->i()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1a
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v3, "X-Attribution-ID"
invoke-direct {v2, v3, v1}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_19
return-object v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public final o()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/feed/a/a;->a:Z
invoke-virtual {p0}, Lcom/instagram/feed/a/a;->h()V
return-void
.end method