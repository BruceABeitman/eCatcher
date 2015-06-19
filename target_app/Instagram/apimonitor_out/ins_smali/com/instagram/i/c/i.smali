.class final Lcom/instagram/i/c/i;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/i/c/g;
.method constructor <init>(Lcom/instagram/i/c/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/i;->a:Lcom/instagram/i/c/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/i;->a:Lcom/instagram/i/c/g;
invoke-static {v0}, Lcom/instagram/i/c/g;->d(Lcom/instagram/i/c/g;)V
return-void
.end method
.method private a(Lcom/instagram/user/c/f;)Z
.registers 4
iget-object v0, p1, Lcom/instagram/user/c/f;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/i/c/i;->a:Lcom/instagram/i/c/g;
invoke-static {v1}, Lcom/instagram/i/c/g;->c(Lcom/instagram/i/c/g;)Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/user/c/f;
invoke-direct {p0, p1}, Lcom/instagram/i/c/i;->a(Lcom/instagram/user/c/f;)Z
move-result v0
return v0
.end method
.method public final synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/i;->a()V
return-void
.end method