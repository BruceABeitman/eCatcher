.class public final Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field public static final BACKGROUND_COLOR:I
.field private final r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
.field private final s:Landroid/os/Handler;
.field private final t:J
.field private u:J
.method public constructor <init>(Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;JJ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
iput-wide p2, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->t:J
iput-wide p4, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->u:J
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
.registers 5
iget-wide v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->u:J
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->u:J
return-wide v0
.end method
.method static synthetic b(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
return-object v0
.end method
.method static synthetic c(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
.registers 3
iget-wide v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->u:J
return-wide v0
.end method
.method static synthetic d(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)J
.registers 3
iget-wide v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->t:J
return-wide v0
.end method
.method static synthetic e(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;
return-object v0
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->shouldStopAdCheck()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v0, Lcom/google/ads/mediation/jsadapter/a;
iget-object v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
invoke-virtual {v1}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->getWebViewWidth()I
move-result v1
iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
invoke-virtual {v2}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->getWebViewHeight()I
move-result v2
iget-object v3, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
invoke-virtual {v3}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->getWebView()Landroid/webkit/WebView;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/ads/mediation/jsadapter/a;-><init>(Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;IILandroid/webkit/WebView;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/google/ads/mediation/jsadapter/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_c
.end method
.method public start()V
.registers 4
iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;
iget-wide v1, p0, Lcom/google/ads/mediation/jsadapter/AdViewCheckTask;->t:J
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method