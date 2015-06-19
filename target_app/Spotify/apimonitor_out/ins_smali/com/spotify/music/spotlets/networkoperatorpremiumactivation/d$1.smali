.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
const/4 v0, 0x1
new-array v3, v0, [Lorg/apache/http/Header;
const/4 v0, 0x0
new-instance v1, Lorg/apache/http/message/BasicHeader;
const-string v2, "AppKey"
const-string v4, "aZXCIfH5jM5QA4JdAntHFAVkGW9Wc12R"
invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v1, v3, v0
new-instance v4, Lcom/loopj/android/http/RequestParams;
invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V
iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->b(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/loopj/android/http/b;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
invoke-static {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Landroid/content/Context;
move-result-object v1
const-string v2, "http://api.gws.ph/v1/spotify/subscriptions"
iget-object v5, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$1;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
iget-object v5, v5, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c:Lcom/loopj/android/http/l;
invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/b;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
return-void
.end method