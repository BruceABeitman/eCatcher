.class final Lcom/spotify/mobile/android/service/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/spotify/mobile/android/util/ef;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/Uri;

.field private d:Lcom/spotify/mobile/android/util/ec;


# direct methods
.method constructor <init>(Landroid/app/Service;Landroid/net/Uri;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/a/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/a/f;->c:Landroid/net/Uri;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/ec;->a(Landroid/app/Service;)Lcom/spotify/mobile/android/util/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->d:Lcom/spotify/mobile/android/util/ec;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->d:Lcom/spotify/mobile/android/util/ec;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final a_(Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/a/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->d:Lcom/spotify/mobile/android/util/ec;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->d:Lcom/spotify/mobile/android/util/ec;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->d:Lcom/spotify/mobile/android/util/ec;

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/f;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    const/4 v0, 0x0

    :goto_7
    return v0

    :pswitch_8
    iget-object v1, p0, Lcom/spotify/mobile/android/service/a/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dp;->C(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_e
    iget-object v1, p0, Lcom/spotify/mobile/android/service/a/f;->c:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/service/a/f;->a_(Landroid/net/Uri;)V

    goto :goto_7

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method
