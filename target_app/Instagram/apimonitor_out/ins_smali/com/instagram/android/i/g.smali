.class final Lcom/instagram/android/i/g;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"
.implements Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;
.field final synthetic a:Lcom/instagram/android/i/f;
.method constructor <init>(Lcom/instagram/android/i/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/i/g;->a:Lcom/instagram/android/i/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onOperation(Lcom/instagram/realtimeclient/RealtimeOperation;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/i/g;->a:Lcom/instagram/android/i/f;
invoke-static {v0}, Lcom/instagram/android/i/f;->c(Lcom/instagram/android/i/f;)Lcom/instagram/android/i/d;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/i/d;->a(Lcom/instagram/realtimeclient/RealtimeOperation;)V
return-void
.end method