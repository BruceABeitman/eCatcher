.class public Lcom/twidroid/net/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:Lcom/twidroid/model/twitter/c;
.field public b:Lcom/twidroid/UberSocialApplication;
.field public c:Z
.field public d:Z
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-direct {p0, p1, v0, v1, v2}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;ZZ)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;ZZ)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;ZZ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/c/a/b;->b:Lcom/twidroid/UberSocialApplication;
iput-object p2, p0, Lcom/twidroid/net/c/a/b;->a:Lcom/twidroid/model/twitter/c;
iput-boolean p3, p0, Lcom/twidroid/net/c/a/b;->c:Z
iput-boolean p4, p0, Lcom/twidroid/net/c/a/b;->d:Z
return-void
.end method
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;ZZ)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2, p3}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;ZZ)V
return-void
.end method