.class public final Lcom/instagram/user/e/a;
.super Lcom/instagram/api/k/a/c;
.source "RequestedFollowsRequest.java"
.implements Lcom/instagram/api/k/a/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
return-void
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;
.registers 2
invoke-static {p0}, Lcom/instagram/user/e/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-static {p1}, Lcom/instagram/user/e/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 2
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "friendships/pending/"
return-object v0
.end method