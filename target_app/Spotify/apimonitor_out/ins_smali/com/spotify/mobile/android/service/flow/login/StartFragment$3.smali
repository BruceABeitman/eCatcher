.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/SurfaceHolder$Callback;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$3;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 5
return-void
.end method
.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 2
invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V
return-void
.end method
.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 2
return-void
.end method