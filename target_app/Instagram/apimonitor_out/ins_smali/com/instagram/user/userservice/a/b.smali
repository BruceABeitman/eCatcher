.class public final Lcom/instagram/user/userservice/a/b;
.super Lcom/instagram/api/k/a/e;
.source "AutoCompleteUserListResponse.java"
.implements Lcom/instagram/user/userservice/c;
.field  a:Ljava/util/List;
.field  b:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/user/userservice/a/b;->a:Ljava/util/List;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/user/userservice/a/b;->b:J
return-void
.end method
.method public final a()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/instagram/user/userservice/a/b;->a:Ljava/util/List;
return-object v0
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/instagram/user/userservice/a/b;->b:J
return-wide v0
.end method