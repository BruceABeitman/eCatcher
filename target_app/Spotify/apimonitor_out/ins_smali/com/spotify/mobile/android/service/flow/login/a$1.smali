.class final Lcom/spotify/mobile/android/service/flow/login/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/a;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/a;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/a$1;->b:Lcom/spotify/mobile/android/service/flow/login/a;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/a$1;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a$1;->a:Landroid/view/View;
const v1, 0x7f0a02af
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method