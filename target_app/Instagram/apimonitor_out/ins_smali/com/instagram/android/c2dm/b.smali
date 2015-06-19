.class public final Lcom/instagram/android/c2dm/b;
.super Ljava/lang/Object;
.source "IgNotificationUri.java"
.method public static a(Ljava/lang/String;)Landroid/net/Uri;
.registers 3
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
const-string v1, "ig"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "notif"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.registers 4
new-instance v0, Landroid/net/Uri$Builder;
invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V
const-string v1, "ig"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "notif"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method