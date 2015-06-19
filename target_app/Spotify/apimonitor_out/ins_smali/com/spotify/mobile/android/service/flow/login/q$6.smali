.class final Lcom/spotify/mobile/android/service/flow/login/q$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/q;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/q$6;->a:Lcom/spotify/mobile/android/service/flow/login/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x6
if-eq p2, v0, :cond_d
if-eqz p3, :cond_12
invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/16 v1, 0x42
if-ne v0, v1, :cond_12
:cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$6;->a:Lcom/spotify/mobile/android/service/flow/login/q;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->b(Lcom/spotify/mobile/android/service/flow/login/q;)V
:cond_12
const/4 v0, 0x0
return v0
.end method