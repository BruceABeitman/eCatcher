.class public final Lcom/instagram/i/b/a/a;
.super Lcom/instagram/api/k/a/c;
.source "NewsfeedFollowingRequest.java"
.implements Lcom/instagram/api/k/a/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
return-void
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/a;
.registers 2
invoke-static {p0}, Lcom/instagram/i/d/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/a;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-static {p1}, Lcom/instagram/i/b/a/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/a;
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
const-string v0, "news/"
return-object v0
.end method