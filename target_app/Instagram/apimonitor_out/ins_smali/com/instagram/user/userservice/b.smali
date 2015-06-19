.class final Lcom/instagram/user/userservice/b;
.super Lcom/instagram/api/k/a/h;
.source "UserServiceHelper.java"
.field final synthetic a:Lcom/instagram/user/userservice/a;
.method private constructor <init>(Lcom/instagram/user/userservice/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/user/userservice/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/user/userservice/b;-><init>(Lcom/instagram/user/userservice/a;)V
return-void
.end method
.method private a(Lcom/instagram/user/userservice/c;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/a;->a(Z)V
:try_start_9
iget-object v0, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;
invoke-interface {p1}, Lcom/instagram/user/userservice/c;->a()Ljava/util/Collection;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/userservice/a;->a(Ljava/util/Collection;)V
:goto_12
:try_end_12
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_1c
iget-object v0, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;
invoke-interface {p1}, Lcom/instagram/user/userservice/c;->b()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/user/userservice/a;->a(J)V
return-void
:catch_1c
move-exception v0
goto :goto_12
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
:try_start_3
iget-object v0, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;
invoke-static {v0}, Lcom/instagram/user/userservice/a;->a(Lcom/instagram/user/userservice/a;)V
:try_end_8
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
goto :goto_8
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/userservice/c;
invoke-direct {p0, p1}, Lcom/instagram/user/userservice/b;->a(Lcom/instagram/user/userservice/c;)V
return-void
.end method