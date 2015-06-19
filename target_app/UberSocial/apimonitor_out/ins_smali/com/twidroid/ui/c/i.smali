.class public Lcom/twidroid/ui/c/i;
.super Lcom/twidroid/ui/c/c;
.source "SourceFile"
.field public p:Lcom/twidroid/model/twitter/User;
.field private q:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "no_app_tag_assigned_to_item"
invoke-direct {p0, v0}, Lcom/twidroid/ui/c/c;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/ui/c/i;->c:I
return-void
.end method
.method public constructor <init>(Lcom/twidroid/fragments/base/o;Lcom/twidroid/model/twitter/User;)V
.registers 4
iget-object v0, p2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
iput-object p2, p0, Lcom/twidroid/ui/c/i;->p:Lcom/twidroid/model/twitter/User;
iget-object v0, p2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/ui/c/i;->q:Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/ui/c/i;->c:I
invoke-virtual {p2}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/ui/c/i;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
iput-object p2, p0, Lcom/twidroid/ui/c/i;->q:Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/ui/c/i;->c:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/c/i;->q:Ljava/lang/String;
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/c/i;->q:Ljava/lang/String;
return-object v0
.end method