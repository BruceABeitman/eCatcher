.class public final Lcom/google/android/gms/internal/cx;
.super Ljava/lang/Object;
.method public static a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/cw;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
return-void
.end method
.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method