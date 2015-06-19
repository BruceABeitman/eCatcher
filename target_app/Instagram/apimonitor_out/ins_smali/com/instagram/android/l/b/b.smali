.class public final Lcom/instagram/android/l/b/b;
.super Lcom/instagram/api/j/b;
.source "FollowAllAsyncRequest.java"
.field private a:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method private g()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/instagram/android/l/b/b;->a:Ljava/util/List;
return-object v0
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/instagram/android/l/b/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, ","
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b
:cond_24
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_33
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
:cond_33
const-string v0, "user_ids"
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/b/b;->a:Ljava/util/List;
invoke-virtual {p0}, Lcom/instagram/android/l/b/b;->h()V
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/android/l/b/b;->g()Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "friendships/create_many/async/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method