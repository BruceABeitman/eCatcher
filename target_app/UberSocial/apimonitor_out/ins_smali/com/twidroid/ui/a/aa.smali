.class public Lcom/twidroid/ui/a/aa;
.super Lcom/twidroid/ui/a/p;
.source "SourceFile"
.field protected static final a:Ljava/lang/String; = "RetweetedByAdapter"
.field private h:Z
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
const-string v0, ""
invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/a/p;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/ui/a/aa;->h:Z
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/a/aa;->e:Landroid/app/Activity;
const/4 v1, -0x1
invoke-static {v0, p1, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/a/aa;->h:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/a/aa;->h:Z
return v0
.end method