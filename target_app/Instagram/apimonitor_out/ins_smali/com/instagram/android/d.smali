.class final Lcom/instagram/android/d;
.super Ljava/lang/Object;
.source "InstagramApplication.java"
.implements Lcom/instagram/common/e/a/c;
.field final synthetic a:Lcom/instagram/android/InstagramApplication;
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/d;->a:Lcom/instagram/android/InstagramApplication;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;
.registers 5
new-instance v0, Lcom/instagram/api/f/a;
iget-object v1, p0, Lcom/instagram/android/d;->a:Lcom/instagram/android/InstagramApplication;
invoke-virtual {v1}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1, p2}, Lcom/instagram/api/f/a;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
move-result-object v0
return-object v0
.end method