.class  Lcom/millennialmedia/android/dp;
.super Lcom/millennialmedia/android/az;
.source "SourceFile"
.field  f:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/dn;)V
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/az;-><init>()V
if-eqz p1, :cond_16
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/dp;->f:Ljava/lang/ref/WeakReference;
iget-object v0, p1, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;
if-eqz v0, :cond_16
iget-object v0, p1, Lcom/millennialmedia/android/dn;->c:Lcom/millennialmedia/android/MMActivity;
iget-wide v0, v0, Lcom/millennialmedia/android/MMActivity;->a:J
iput-wide v0, p0, Lcom/millennialmedia/android/dp;->e:J
:cond_16
return-void
.end method
.method public a(Landroid/net/Uri;)Z
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/dp;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/dn;
if-eqz v0, :cond_23
new-instance v1, Lcom/millennialmedia/android/dp$1;
invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/dp$1;-><init>(Lcom/millennialmedia/android/dp;Lcom/millennialmedia/android/dn;)V
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->a(Ljava/lang/Runnable;)V
if-eqz p1, :cond_23
invoke-static {v0, p1}, Lcom/millennialmedia/android/dn;->a(Lcom/millennialmedia/android/dn;Landroid/net/Uri;)Z
move-result v1
if-eqz v1, :cond_23
invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->e(Ljava/lang/String;)V
const/4 v0, 0x1
:goto_22
return v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method public d()Lcom/millennialmedia/android/OverlaySettings;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/dp;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/dn;
if-eqz v0, :cond_1a
iget-object v2, v0, Lcom/millennialmedia/android/dn;->n:Ljava/lang/String;
if-eqz v2, :cond_1a
new-instance v1, Lcom/millennialmedia/android/OverlaySettings;
invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V
iget-object v0, v0, Lcom/millennialmedia/android/dn;->n:Ljava/lang/String;
iput-object v0, v1, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
move-object v0, v1
:goto_19
return-object v0
:cond_1a
move-object v0, v1
goto :goto_19
.end method