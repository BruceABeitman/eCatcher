.class public final Lcom/instagram/android/c/a/m;
.super Lcom/instagram/api/j/g;
.source "RecommendedUserListRequest.java"
.field private a:Z
.field private b:Z
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p5}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-boolean p3, p0, Lcom/instagram/android/c/a/m;->a:Z
iput-boolean p4, p0, Lcom/instagram/android/c/a/m;->b:Z
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
iget-boolean v0, p0, Lcom/instagram/android/c/a/m;->a:Z
if-eqz v0, :cond_b
const-string v0, "in_signup"
const-string v1, "true"
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 8
const/4 v0, 0x1
const-string v1, "groups"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_3d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v2, "items"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_28
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_3a
invoke-static {p2}, Lcom/instagram/user/d/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;
move-result-object v2
if-eqz v2, :cond_3a
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_28
:cond_3a
invoke-virtual {p3, v1}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
:goto_3d
:cond_3d
return v0
:cond_3e
const/4 v0, 0x0
goto :goto_3d
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/c/a/m;->b:Z
if-eqz v0, :cond_7
const-string v0, "discover/ayml/"
:goto_6
return-object v0
:cond_7
const-string v0, "friendships/suggested/"
goto :goto_6
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method