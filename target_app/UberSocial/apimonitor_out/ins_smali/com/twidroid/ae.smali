.class  Lcom/twidroid/ae;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Lcom/twidroid/activity/r;
.field  b:Ljava/lang/String;
.field final synthetic c:Lcom/twidroid/UberSocialProfile;
.method public constructor <init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/ae;->c:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/ae;->a:Lcom/twidroid/activity/r;
iput-object p3, p0, Lcom/twidroid/ae;->b:Ljava/lang/String;
return-void
.end method
.method public a()Lcom/twidroid/activity/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/ae;->a:Lcom/twidroid/activity/r;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ae;->b:Ljava/lang/String;
return-object v0
.end method
.method public c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/ae;->b:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method