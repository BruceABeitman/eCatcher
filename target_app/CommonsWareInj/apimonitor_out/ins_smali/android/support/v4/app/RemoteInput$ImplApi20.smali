.class  Landroid/support/v4/app/RemoteInput$ImplApi20;
.super Ljava/lang/Object;
.source "RemoteInput.java"
.implements Landroid/support/v4/app/RemoteInput$Impl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
.registers 4
invoke-static {p1, p2, p3}, Landroid/support/v4/app/RemoteInputCompatApi20;->addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
return-void
.end method
.method public getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/RemoteInputCompatApi20;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method