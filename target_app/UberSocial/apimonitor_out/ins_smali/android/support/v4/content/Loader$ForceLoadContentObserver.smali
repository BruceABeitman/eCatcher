.class public final Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"
.field final synthetic this$0:Landroid/support/v4/content/Loader;
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method public deliverSelfNotifications()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onChange(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;
invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V
return-void
.end method