.class public Lcom/twidroid/net/a/c/a/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/twidroid/net/a/c/a/m;
.field private b:Lcom/twidroid/model/twitter/User;
.field private c:Lcom/twidroid/model/twitter/User;
.field private d:Ljava/lang/Object;
.method public constructor <init>(Lcom/twidroid/net/a/c/a/m;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/User;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/a/c/a/l;->a:Lcom/twidroid/net/a/c/a/m;
iput-object p2, p0, Lcom/twidroid/net/a/c/a/l;->b:Lcom/twidroid/model/twitter/User;
iput-object p3, p0, Lcom/twidroid/net/a/c/a/l;->c:Lcom/twidroid/model/twitter/User;
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/a/c/a/l;->d:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/net/a/c/a/m;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/User;Ljava/lang/Object;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/a/c/a/l;->a:Lcom/twidroid/net/a/c/a/m;
iput-object p2, p0, Lcom/twidroid/net/a/c/a/l;->b:Lcom/twidroid/model/twitter/User;
iput-object p3, p0, Lcom/twidroid/net/a/c/a/l;->c:Lcom/twidroid/model/twitter/User;
iput-object p4, p0, Lcom/twidroid/net/a/c/a/l;->d:Ljava/lang/Object;
return-void
.end method
.method public a()Lcom/twidroid/net/a/c/a/m;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/l;->a:Lcom/twidroid/net/a/c/a/m;
return-object v0
.end method
.method public b()Lcom/twidroid/model/twitter/User;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/l;->b:Lcom/twidroid/model/twitter/User;
return-object v0
.end method
.method public c()Lcom/twidroid/model/twitter/User;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/l;->c:Lcom/twidroid/model/twitter/User;
return-object v0
.end method
.method public d()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/c/a/l;->d:Ljava/lang/Object;
return-object v0
.end method