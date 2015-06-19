.class  Lcom/millennialmedia/android/az;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/android/ay;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/ref/WeakReference;
.field  c:Landroid/net/Uri;
.field  d:Ljava/lang/String;
.field  e:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public a(Landroid/net/Uri;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public b(Landroid/net/Uri;)V
.registers 6
const-string v0, "HttpRedirection"
const-string v1, "Starting activity for %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 1
return-void
.end method
.method public c(Landroid/net/Uri;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public d()Lcom/millennialmedia/android/OverlaySettings;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public e()V
.registers 1
return-void
.end method