.class final Lcom/userzoom/t;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.field private synthetic a:Lcom/userzoom/n;
.method constructor <init>(Lcom/userzoom/n;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/t;->a:Lcom/userzoom/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
if-eqz p2, :cond_36
const-string v0, "VideoManager"
invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
instance-of v0, p2, Landroid/widget/EditText;
if-eqz v0, :cond_36
const-string v0, "VideoManager"
const-string v3, "isFocus on edittext..."
invoke-static {v0, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, p2
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I
move-result v0
and-int/lit16 v0, v0, 0x80
const/16 v3, 0x80
if-ne v0, v3, :cond_36
const-string v0, "VideoManager"
const-string v1, "isFocus on Password..."
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
:goto_2d
iget-object v1, p0, Lcom/userzoom/t;->a:Lcom/userzoom/n;
iput-boolean v0, v1, Lcom/userzoom/n;->h:Z
iget-object v0, p0, Lcom/userzoom/t;->a:Lcom/userzoom/n;
iput-object p2, v0, Lcom/userzoom/n;->i:Landroid/view/View;
return-void
:cond_36
move-object p2, v1
move v0, v2
goto :goto_2d
.end method