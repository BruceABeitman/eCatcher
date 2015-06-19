.class  Lcom/twidroid/fragments/base/m;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/base/e;
.field private b:Lcom/twidroid/model/twitter/c;
.method public constructor <init>(Lcom/twidroid/fragments/base/e;Landroid/content/Context;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/fragments/base/m;->a:Lcom/twidroid/fragments/base/e;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
const v0, 0x7f0c02f7
invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/base/k;
invoke-direct {v1, v0}, Lcom/twidroid/fragments/base/k;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/twidroid/fragments/base/m;->b:Lcom/twidroid/model/twitter/c;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
const/4 v4, -0x1
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/twidroid/fragments/base/h;
iget v1, v0, Lcom/twidroid/fragments/base/h;->a:I
iget-object v0, p0, Lcom/twidroid/fragments/base/m;->a:Lcom/twidroid/fragments/base/e;
iget-object v0, v0, Lcom/twidroid/fragments/base/e;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-nez v0, :cond_33
const-string v2, "BaseTwetTimelineWithAccountSelection"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Account is null in stream handler. Maybe it was All accounts? "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
if-ne v1, v4, :cond_3d
const/4 v0, 0x1
:goto_24
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
if-ne v1, v4, :cond_3f
iget-object v0, p0, Lcom/twidroid/fragments/base/m;->b:Lcom/twidroid/model/twitter/c;
:cond_33
if-nez v0, :cond_47
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "WARNING!!! Something wrong with logic above, since acc should not be null at this point!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_3c
return-void
:cond_3d
const/4 v0, 0x0
goto :goto_24
:cond_3f
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Account was null in StreamHandler, finishing"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3c
:cond_47
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_6c
goto :goto_3c
:pswitch_4d
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v1
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-eqz v1, :cond_5d
iget-object v1, p0, Lcom/twidroid/fragments/base/m;->a:Lcom/twidroid/fragments/base/e;
invoke-virtual {v1, v0}, Lcom/twidroid/fragments/base/e;->c(Lcom/twidroid/model/twitter/c;)V
goto :goto_3c
:cond_5d
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Ignoring START for all accounts"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3c
:pswitch_65
iget-object v1, p0, Lcom/twidroid/fragments/base/m;->a:Lcom/twidroid/fragments/base/e;
invoke-virtual {v1, v0}, Lcom/twidroid/fragments/base/e;->e(Lcom/twidroid/model/twitter/c;)V
goto :goto_3c
nop
:pswitch_data_6c
.packed-switch 0x1
:pswitch_4d
:pswitch_65
.end packed-switch
.end method