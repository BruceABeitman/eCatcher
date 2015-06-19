.class public final Lcom/instagram/feed/d/s;
.super Ljava/lang/Object;
.source "MediaRecipientsMutator.java"
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Media.UPDATED_RECIPIENTS|"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(Lcom/instagram/feed/d/l;)V
.registers 7
const-wide/16 v4, 0x0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J
move-result-wide v2
cmp-long v0, v2, v4
if-nez v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->al()J
move-result-wide v2
cmp-long v0, v2, v4
if-eqz v0, :cond_2e
:cond_1e
const/4 v0, 0x1
:goto_1f
sget v2, Lcom/instagram/model/b/c;->a:I
invoke-static {p0, v1, v2, v0}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V
sget v0, Lcom/instagram/model/b/c;->b:I
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->q()Z
move-result v2
invoke-static {p0, v1, v0, v2}, Lcom/instagram/feed/d/s;->a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_1f
.end method
.method public static a(Lcom/instagram/feed/d/l;Ljava/lang/String;IZ)V
.registers 7
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->aj()Lcom/instagram/model/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
:goto_12
if-nez v0, :cond_1a
:cond_14
:goto_14
return-void
:cond_15
invoke-virtual {p0, p1}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;
move-result-object v0
goto :goto_12
:cond_1a
invoke-virtual {v0, p2}, Lcom/instagram/model/b/a;->a(I)Z
move-result v2
if-eq v2, p3, :cond_14
invoke-virtual {v0, p2, p3}, Lcom/instagram/model/b/a;->a(IZ)V
if-nez v1, :cond_2c
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ak()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_2c
invoke-static {p0}, Lcom/instagram/feed/d/s;->b(Lcom/instagram/feed/d/l;)V
goto :goto_14
.end method
.method private static b(Lcom/instagram/feed/d/l;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/feed/d/s;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "id"
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
return-void
.end method