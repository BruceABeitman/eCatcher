.class public final Lcom/spotify/mobile/android/util/tracking/n;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:I
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
const-string v0, "viewName must not be null"
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/n;->a:Landroid/content/Context;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
iput-boolean v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/util/tracking/n;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/tracking/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-object v0
.end method
.method public final a()V
.registers 7
iget v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
packed-switch v0, :pswitch_data_18
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/util/tracking/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
const/4 v0, 0x1
iput v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
:pswitch_17
return-void
:pswitch_data_18
.packed-switch 0x1
:pswitch_17
.end packed-switch
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
const-string v0, "ViewLoadingTracker.ID"
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ViewLoadingTracker.VIEW_NAME"
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ViewLoadingTracker.VIEW_URI"
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ViewLoadingTracker.STATE"
iget v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "ViewLoadingTracker.DRY_RUN"
iget-boolean v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public final b()V
.registers 7
iget v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
packed-switch v0, :pswitch_data_24
:pswitch_5
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/util/tracking/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
const/4 v0, 0x2
iput v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
:pswitch_17
:goto_17
return-void
:pswitch_18
const-string v0, "Complete called in wrong state. Have you called start()?"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_17
:pswitch_1e
const-string v0, "Complete cannot be called after tracking was cancelled."
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_17
:pswitch_data_24
.packed-switch 0x0
:pswitch_18
:pswitch_5
:pswitch_17
:pswitch_1e
.end packed-switch
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const-string v0, "ViewLoadingTracker.ID"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "ViewLoadingTracker.VIEW_URI"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "ViewLoadingTracker.STATE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
:cond_1b
const-string v0, "Invalid saved state bundle. Have you called saveToBundle?"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_2
:cond_21
const-string v0, "ViewLoadingTracker.ID"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
const-string v0, "ViewLoadingTracker.VIEW_URI"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->c:Ljava/lang/String;
const-string v0, "ViewLoadingTracker.VIEW_NAME"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
const-string v0, "ViewLoadingTracker.STATE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
const-string v0, "ViewLoadingTracker.DRY_RUN"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
goto :goto_2
.end method
.method public final c()V
.registers 7
iget v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
packed-switch v0, :pswitch_data_1e
:pswitch_5
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/n;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/util/tracking/n;->d:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/util/tracking/n;->e:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/util/tracking/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
const/4 v0, 0x3
iput v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
:goto_17
:pswitch_17
return-void
:pswitch_18
const-string v0, "Cancel called in wrong state. Have you called start()?"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_17
:pswitch_data_1e
.packed-switch 0x0
:pswitch_18
:pswitch_5
:pswitch_17
:pswitch_17
.end packed-switch
.end method
.method public final d()Z
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/util/tracking/n;->f:I
const/4 v1, 0x3
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method