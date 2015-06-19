.class  Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;
.super Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;
.source "IntentCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V
return-void
.end method
.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Landroid/support/v4/content/IntentCompatHoneycomb;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Landroid/support/v4/content/IntentCompatHoneycomb;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method