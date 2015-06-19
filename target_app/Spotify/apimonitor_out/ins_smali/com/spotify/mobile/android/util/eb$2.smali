.class final Lcom/spotify/mobile/android/util/eb$2;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"
.field final synthetic a:Landroid/view/View;
.method constructor <init>(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/eb$2;->a:Landroid/view/View;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/eb$2;->a:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method