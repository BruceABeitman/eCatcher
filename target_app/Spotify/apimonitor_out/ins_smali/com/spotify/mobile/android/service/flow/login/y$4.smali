.class final Lcom/spotify/mobile/android/service/flow/login/y$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/z;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/y;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/y$4;->b:Lcom/spotify/mobile/android/service/flow/login/y;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/y$4;->a:Lcom/spotify/mobile/android/service/flow/login/z;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$4;->a:Lcom/spotify/mobile/android/service/flow/login/z;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/z;->b()V
return-void
.end method