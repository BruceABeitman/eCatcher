.class final Lcom/spotify/mobile/android/service/flow/login/t$22;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/login/k;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$22;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ZZ)V
.registers 5
if-eqz p2, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$22;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->r(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_c
return-void
.end method