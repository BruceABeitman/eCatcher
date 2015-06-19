.class  Lcom/twidroid/TwidroidClient$19;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$19;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
iget-object v0, p0, Lcom/twidroid/TwidroidClient$19;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
if-nez p2, :cond_11
const/4 v0, 0x1
:goto_d
invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->j(Z)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method