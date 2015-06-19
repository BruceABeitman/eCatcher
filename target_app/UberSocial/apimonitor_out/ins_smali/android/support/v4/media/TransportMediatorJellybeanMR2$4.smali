.class  Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAudioFocusChange(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
iget-object v0, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;
invoke-interface {v0, p1}, Landroid/support/v4/media/TransportMediatorCallback;->handleAudioFocusChange(I)V
return-void
.end method