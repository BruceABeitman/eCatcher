.class final Lcom/bbm/ui/ek;
.super Ljava/lang/Object;
.source "ObservingImageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/ObservingImageView;
.method constructor <init>(Lcom/bbm/ui/ObservingImageView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ek;->a:Lcom/bbm/ui/ObservingImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ek;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->invalidate()V
return-void
.end method