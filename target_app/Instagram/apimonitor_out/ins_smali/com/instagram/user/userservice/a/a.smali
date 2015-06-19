.class public final Lcom/instagram/user/userservice/a/a;
.super Lcom/instagram/api/k/a/c;
.source "AutoCompleteUserListRequest.java"
.implements Lcom/instagram/api/k/a/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
return-void
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;
.registers 2
new-instance v0, Lcom/instagram/user/userservice/a/c;
invoke-direct {v0}, Lcom/instagram/user/userservice/a/c;-><init>()V
invoke-static {p0}, Lcom/instagram/user/userservice/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-static {p1}, Lcom/instagram/user/userservice/a/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;
move-result-object v0
return-object v0
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
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
const-string v0, "friendships/autocomplete_user_list/"
return-object v0
.end method