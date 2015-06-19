.class public final Landroid/support/v4/content/l;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic a:Landroid/support/v4/content/k;
.method public constructor <init>(Landroid/support/v4/content/k;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/content/l;->a:Landroid/support/v4/content/k;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public final deliverSelfNotifications()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final onChange(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/content/l;->a:Landroid/support/v4/content/k;
invoke-virtual {v0}, Landroid/support/v4/content/k;->r()V
return-void
.end method