.class public Lcom/twidroid/ui/a/k;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "ConversationAdapter"
.field private W:Z
.field  b:Z
.method public constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Z)V
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, p1, v0, p3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/a/k;->b:Z
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/a/k;->W:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/a/k;->W:Z
return v0
.end method