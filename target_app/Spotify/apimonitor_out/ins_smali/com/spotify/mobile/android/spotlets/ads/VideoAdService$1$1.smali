.class final Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;
.super Lcom/spotify/mobile/android/spotlets/video/b;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
.method varargs constructor <init>(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;[ILjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
const/4 v0, 0x4
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/spotlets/video/b;-><init>(I[I)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->c(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
:cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->g:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
return-void
.end method
.method protected final a(I)V
.registers 5
packed-switch p1, :pswitch_data_34
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->d:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
goto :goto_3
:pswitch_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->e:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
goto :goto_3
:pswitch_24
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->f:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
goto :goto_3
:pswitch_data_34
.packed-switch 0x0
:pswitch_4
:pswitch_14
:pswitch_24
.end packed-switch
.end method
.method protected final b()V
.registers 1
return-void
.end method
.method protected final b(I)V
.registers 2
return-void
.end method
.method protected final c(I)V
.registers 7
const/4 v4, 0x1
const-string v0, "video time event : %d; adid = %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->c(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
move-result v0
if-nez v0, :cond_38
const/16 v0, 0x7530
if-ne p1, v0, :cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
:cond_38
if-ne p1, v4, :cond_49
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;Ljava/lang/String;)V
:cond_49
return-void
.end method