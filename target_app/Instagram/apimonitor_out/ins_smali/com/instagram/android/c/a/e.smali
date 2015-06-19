.class public final Lcom/instagram/android/c/a/e;
.super Lcom/instagram/api/j/b;
.source "LikeRequest.java"
.field private a:Lcom/instagram/feed/d/l;
.field private b:I
.field private e:I
.field private f:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IILjava/util/Map;Lcom/instagram/api/j/a;)V
.registers 9
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p7}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;
iput p4, p0, Lcom/instagram/android/c/a/e;->b:I
iput p5, p0, Lcom/instagram/android/c/a/e;->e:I
iput-object p6, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;
return-void
.end method
.method public final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;
invoke-static {v0}, Lcom/instagram/feed/d/r;->a(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "media_id"
iget-object v1, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected final b(Lcom/instagram/common/a/c/b;)V
.registers 5
const-string v1, "d"
iget v0, p0, Lcom/instagram/android/c/a/e;->e:I
sget v2, Lcom/instagram/android/h/g;->b:I
if-ne v0, v2, :cond_37
const-string v0, "1"
:goto_a
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/instagram/android/c/a/e;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_37
const-string v0, "0"
goto :goto_a
:cond_3a
return-void
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 6
iget v0, p0, Lcom/instagram/android/c/a/e;->b:I
sget v1, Lcom/instagram/feed/d/o;->a:I
if-ne v0, v1, :cond_1e
const-string v0, "like"
:goto_8
const-string v1, "media/%s/%s/"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/instagram/android/c/a/e;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v4}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1e
const-string v0, "unlike"
goto :goto_8
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