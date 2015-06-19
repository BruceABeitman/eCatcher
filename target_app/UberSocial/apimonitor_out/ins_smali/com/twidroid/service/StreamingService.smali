.class public Lcom/twidroid/service/StreamingService;
.super Landroid/app/Service;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "com.ubermedia.STREAMING_ACTION"
.field protected static b:Ljava/util/Map; = null
.field private static final c:Ljava/lang/String; = "StreamingService"
.field private static final d:I = 0x1
.field private static final e:I = 0x2
.field private static final f:I = 0x3
.field private static final g:I = 0x4
.field private static final h:I = 0x5
.field private static final i:I = 0x6
.field private static final n:I = 0x2030
.field private static final o:I = 0x2031
.field private static q:Ljava/util/concurrent/CopyOnWriteArraySet;
.field private j:Lcom/twidroid/d/v;
.field private k:Landroid/app/NotificationManager;
.field private l:Ljava/util/Timer;
.field private final m:Landroid/os/IBinder;
.field private p:Lcom/twidroid/net/a/c/a/j;
.field private r:Lcom/twidroid/service/c;
.field private s:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V
sput-object v0, Lcom/twidroid/service/StreamingService;->q:Ljava/util/concurrent/CopyOnWriteArraySet;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/twidroid/service/e;
invoke-direct {v0, p0}, Lcom/twidroid/service/e;-><init>(Lcom/twidroid/service/StreamingService;)V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->m:Landroid/os/IBinder;
new-instance v0, Lcom/twidroid/service/StreamingService$1;
invoke-direct {v0, p0}, Lcom/twidroid/service/StreamingService$1;-><init>(Lcom/twidroid/service/StreamingService;)V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->p:Lcom/twidroid/net/a/c/a/j;
new-instance v0, Lcom/twidroid/service/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/service/c;-><init>(Lcom/twidroid/service/StreamingService;Lcom/twidroid/service/StreamingService$1;)V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->r:Lcom/twidroid/service/c;
new-instance v0, Lcom/twidroid/service/StreamingService$3;
invoke-direct {v0, p0}, Lcom/twidroid/service/StreamingService$3;-><init>(Lcom/twidroid/service/StreamingService;)V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->s:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic a()Ljava/util/concurrent/CopyOnWriteArraySet;
.registers 1
sget-object v0, Lcom/twidroid/service/StreamingService;->q:Ljava/util/concurrent/CopyOnWriteArraySet;
return-object v0
.end method
.method private a(Lcom/twidroid/net/a/c/a/k;)V
.registers 4
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->h()Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "StreamingService"
const-string v1, "stream already connected, no need to start again"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return-void
:cond_e
invoke-direct {p0}, Lcom/twidroid/service/StreamingService;->c()Z
move-result v0
if-eqz v0, :cond_1f
const-string v0, "StreamingService"
const-string v1, "Starting stream"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->a()V
goto :goto_d
:cond_1f
const-string v0, "StreamingService"
const-string v1, "Stream will be started as soon as wifi connection will be available."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
.end method
.method private b()V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->O()Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ag()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ag()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
move-object v1, v0
:goto_1c
new-instance v2, Landroid/media/MediaPlayer;
invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
:try_start_21
invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
move-result-object v0
if-nez v0, :cond_3e
const-string v0, "StreamingService"
const-string v1, "Can play ringtone. Ringtone Manager returned NULL"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_2e
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_76
:goto_2e
:cond_2e
return-void
:cond_2f
new-instance v0, Landroid/media/RingtoneManager;
invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V
invoke-virtual {v0, v2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;
move-result-object v0
move-object v1, v0
goto :goto_1c
:try_start_3e
:cond_3e
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v3, "phone"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
if-eqz v1, :cond_2e
if-eqz v0, :cond_54
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
move-result v0
if-nez v0, :cond_2e
:cond_54
invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
const/4 v0, 0x0
invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V
const/4 v0, 0x5
invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
:cond_65
:try_end_65
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_65} :catch_76
const-wide/16 v0, 0x7d0
:try_start_67
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_6a
:try_start_6a
:try_end_6a
.catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_71
.catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_76
invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-nez v0, :cond_65
goto :goto_2e
:catch_71
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_75
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_75} :catch_76
goto :goto_6a
:catch_76
move-exception v0
const-string v1, "StreamingService"
const-string v2, "Unable to play ringtone"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2e
.end method
.method private b(Lcom/twidroid/net/a/c/a/k;)V
.registers 2
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->g()V
return-void
.end method
.method static synthetic b(Lcom/twidroid/service/StreamingService;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/service/StreamingService;->b()V
return-void
.end method
.method private c()Z
.registers 3
const/4 v1, 0x1
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Lcom/twidroid/service/StreamingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-ne v0, v1, :cond_17
move v0, v1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method static synthetic c(Lcom/twidroid/service/StreamingService;)Z
.registers 2
invoke-direct {p0}, Lcom/twidroid/service/StreamingService;->c()Z
move-result v0
return v0
.end method
.method  a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
.registers 13
const/high16 v8, 0x2400
const/4 v7, 0x0
packed-switch p1, :pswitch_data_208
check-cast p2, Lcom/twidroid/model/twitter/Tweet;
iget v0, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I
if-eqz p3, :cond_1bf
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/twidroid/SingleTweetActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "EXTRA_TWEET"
invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v1
const-string v2, "twidroid.timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v1
const-string v2, "twidroid.account_user_id"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "tweet_id"
iget-wide v2, p2, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
:goto_54
return-object v0
:pswitch_55
check-cast p2, Lcom/twidroid/model/twitter/Tweet;
iget v0, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "TabName"
const-string v2, "TAB_MENTIONS"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto :goto_54
:pswitch_90
check-cast p2, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v0
iget-wide v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->D:J
new-instance v4, Landroid/content/Intent;
const-class v5, Lcom/twidroid/TwidroidClient;
invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v5, "TabName"
const-string v6, "TAB_DIRECT_MESSAGES"
invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v4
const-string v5, "twidroid.message_id"
invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "twidroid.account_user_id"
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "twidroid.sender_id"
iget-wide v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->C:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "twidroid.sender_name"
iget-object v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto/16 :goto_54
:pswitch_ec
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/SingleTweetActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "EXTRA_STATUS_ID"
iget-wide v2, p2, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "EXTRA_TWEET"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v0
const-string v1, "TabName"
const-string v2, "TAB_FAVORITES"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto/16 :goto_54
:pswitch_12e
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "profile"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "open_from_notification"
const-string v2, "profile"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "user_id"
invoke-virtual {p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto/16 :goto_54
:pswitch_172
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/SingleTweetActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "EXTRA_STATUS_ID"
iget-wide v2, p2, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v1
const-string v2, "EXTRA_RECIPIENT_USER_ID"
move-object v0, p2
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v3, v0, Lcom/twidroid/model/twitter/Tweet;->ag:J
invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "EXTRA_TWEET"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v0
const-string v1, "TabName"
const-string v2, "TAB_MENTIONS"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto/16 :goto_54
:cond_1bf
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/twidroid/TwidroidClient;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "TabName"
const-string v3, "TAB_TIMELINE"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v1
const-string v2, "twidroid.timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v1
const-string v2, "twidroid.account_user_id"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "foobar://"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
goto/16 :goto_54
nop
:pswitch_data_208
.packed-switch 0x2
:pswitch_55
:pswitch_90
:pswitch_172
:pswitch_12e
:pswitch_ec
.end packed-switch
.end method
.method public a(ILcom/twidroid/model/twitter/CommunicationEntity;II)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V
return-void
.end method
.method public a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V
.registers 21
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
const v8, 0x7f020137
const v9, 0x7f02013b
const v10, 0x7f02010c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "@"
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v7, " "
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/twidroid/model/twitter/Tweet;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
packed-switch p3, :pswitch_data_3d6
move v3, v2
:goto_47
new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const v7, 0x7f0c007a
invoke-static {v2, v7}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
iget-object v7, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v7}, Lcom/twidroid/d/v;->at()Z
move-result v7
if-eqz v7, :cond_31b
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->e()Ljava/lang/String;
move-result-object v7
:goto_67
packed-switch p3, :pswitch_data_3e6
if-lez p4, :cond_388
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v12, " "
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move/from16 v0, p4
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v12, " "
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v12
invoke-static {v12, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const v12, 0x7f0c020d
invoke-static {v3, v12}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_a6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v7, ": "
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v7, 0x5
move/from16 v0, p3
if-ne v0, v7, :cond_ca
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v3
:cond_ca
iget-object v7, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v7}, Lcom/twidroid/d/v;->ai()Z
move-result v7
move/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {p0, v0, v1, v7}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
move-result-object v7
invoke-virtual {v11, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
const v7, 0x7f020140
invoke-virtual {v11, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v7
invoke-virtual {v11, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {v11, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
const/4 v7, 0x1
invoke-virtual {v11, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
move/from16 v0, p4
invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;
invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V
invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
move-result-object v2
invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
const/4 v2, 0x1
invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
const/4 v2, 0x1
move/from16 v0, p3
if-eq v0, v2, :cond_115
const/4 v2, 0x2
move/from16 v0, p3
if-ne v0, v2, :cond_146
:cond_115
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c01cd
invoke-static {v2, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
if-eqz v6, :cond_3a9
move-object v2, v6
:goto_123
invoke-virtual {v11, v8, v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c01cf
invoke-static {v2, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
if-eqz v5, :cond_3b4
:goto_133
invoke-virtual {v11, v9, v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c01af
invoke-static {v2, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
if-eqz v4, :cond_3bf
:goto_143
invoke-virtual {v11, v10, v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
:cond_146
const/4 v2, 0x3
move/from16 v0, p3
if-ne v0, v2, :cond_15b
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0c01cd
invoke-static {v2, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
if-eqz v6, :cond_3ca
:goto_158
invoke-virtual {v11, v8, v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
:cond_15b
invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
move-result-object v2
const/16 v3, 0x10
iput v3, v2, Landroid/app/Notification;->flags:I
iget-object v3, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->aH()Z
move-result v3
if-eqz v3, :cond_17e
iget v3, v2, Landroid/app/Notification;->flags:I
or-int/lit8 v3, v3, 0x1
iput v3, v2, Landroid/app/Notification;->flags:I
const v3, -0xff0001
iput v3, v2, Landroid/app/Notification;->ledARGB:I
const/16 v3, 0x32
iput v3, v2, Landroid/app/Notification;->ledOnMS:I
const/16 v3, 0xabe
iput v3, v2, Landroid/app/Notification;->ledOffMS:I
:cond_17e
iget-object v3, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->K()Z
move-result v3
if-eqz v3, :cond_18c
iget v3, v2, Landroid/app/Notification;->defaults:I
or-int/lit8 v3, v3, 0x2
iput v3, v2, Landroid/app/Notification;->defaults:I
:cond_18c
iget-object v3, p0, Lcom/twidroid/service/StreamingService;->k:Landroid/app/NotificationManager;
move/from16 v0, p1
invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/twidroid/service/StreamingService$2;
invoke-direct {v3, p0}, Lcom/twidroid/service/StreamingService$2;-><init>(Lcom/twidroid/service/StreamingService;)V
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
return-void
:pswitch_1a1
const/4 v2, 0x1
move/from16 v0, p3
if-ne v0, v2, :cond_2a3
const v2, 0x7f0c020e
:goto_1a9
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v4
const/4 v5, 0x0
new-instance v6, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v7
const-class v11, Lcom/twidroid/activity/SendTweet;
invoke-direct {v6, v7, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v7, "EXTRA_REPLY_STATUS_ID"
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J
move-result-wide v11
invoke-virtual {v6, v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v6
const-string v7, "android.intent.extra.TEXT"
if-eqz v3, :cond_2a8
:goto_1c7
invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
const-string v6, "notification_id"
move/from16 v0, p1
invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v3
const-string v6, "TabName"
const-string v7, "TAB_MENTIONS"
invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
const v6, 0x10008000
invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
move-result-object v3
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "foobar://"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v11
invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v3
const/high16 v6, 0x800
invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v5
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const/4 v4, 0x0
new-instance v6, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v7
const-class v11, Lcom/twidroid/service/RetweetService;
invoke-direct {v6, v7, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v7, "tweet_id"
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J
move-result-wide v11
invoke-virtual {v6, v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v6
const-string v7, "notification_id"
move/from16 v0, p1
invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v6
const-string v7, "TabName"
const-string v11, "TAB_MENTIONS"
invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "foobar://"
invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v11
invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v6
const/high16 v7, 0x800
invoke-static {v3, v4, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const/4 v6, 0x0
new-instance v7, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v11
const-class v12, Lcom/twidroid/service/FavoriteService;
invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v11, "tweet_id"
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J
move-result-wide v12
invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v7
const-string v11, "notification_id"
move/from16 v0, p1
invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v7
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "foobar://"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v12
invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v11
invoke-virtual {v7, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v7
const/high16 v11, 0x800
invoke-static {v3, v6, v7, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
move-object v6, v5
move-object v5, v4
move-object v4, v3
move v3, v2
goto/16 :goto_47
:cond_2a3
const v2, 0x7f0c020c
goto/16 :goto_1a9
:cond_2a8
const-string v3, ""
goto/16 :goto_1c7
:pswitch_2ac
const v2, 0x7f0c020b
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const/4 v6, 0x0
new-instance v7, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v11
const-class v12, Lcom/twidroid/SingleDirectMessageActivity;
invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v11, "EXTRA_ACTION_SCREENNAME"
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;
move-result-object v12
invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v7
const-string v11, "notification_id"
move/from16 v0, p1
invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v7
const-string v11, "TabName"
const-string v12, "TAB_DIRECT_MESSAGES"
invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v7
const v11, 0x10008000
invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
move-result-object v7
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "foobar://"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v12
invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v11
invoke-virtual {v7, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v7
const/high16 v11, 0x800
invoke-static {v3, v6, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
move-object v6, v3
move v3, v2
goto/16 :goto_47
:pswitch_309
const v2, 0x7f0c0208
move v3, v2
goto/16 :goto_47
:pswitch_30f
const v2, 0x7f0c0209
move v3, v2
goto/16 :goto_47
:pswitch_315
const v2, 0x7f0c020a
move v3, v2
goto/16 :goto_47
:cond_31b
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "@"
invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;
move-result-object v12
invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
goto/16 :goto_67
:pswitch_334
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v2, p2
check-cast v2, Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;
invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v12, " "
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v12
invoke-static {v12, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_a6
:pswitch_35b
new-instance v12, Lcom/twidroid/ui/StringUrlSpan;
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, " "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v14
invoke-static {v14, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v13, ""
invoke-direct {v12, v3, v13}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
move-object/from16 v0, p2
invoke-virtual {v0, v12}, Lcom/twidroid/model/twitter/CommunicationEntity;->a(Lcom/twidroid/ui/StringUrlSpan;)V
goto/16 :goto_a6
:cond_388
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v12, " "
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;
move-result-object v12
invoke-static {v12, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto/16 :goto_a6
:cond_3a9
const/4 v2, 0x1
move/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
move-result-object v2
goto/16 :goto_123
:cond_3b4
const/4 v3, 0x1
move/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
move-result-object v5
goto/16 :goto_133
:cond_3bf
const/4 v3, 0x1
move/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
move-result-object v4
goto/16 :goto_143
:cond_3ca
const/4 v3, 0x1
move/from16 v0, p3
move-object/from16 v1, p2
invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
move-result-object v6
goto/16 :goto_158
nop
:pswitch_data_3e6
.packed-switch 0x4
:pswitch_334
:pswitch_35b
:pswitch_334
.end packed-switch
:pswitch_data_3d6
.packed-switch 0x1
:pswitch_1a1
:pswitch_1a1
:pswitch_2ac
:pswitch_315
:pswitch_30f
:pswitch_309
.end packed-switch
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 6
const-string v0, "StreamingService"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Starting straming for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
monitor-enter v1
:try_start_1f
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/a/k;
if-nez v0, :cond_5b
const-string v0, "StreamingService"
const-string v2, "No stream found, creating new one"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/net/a/c/a/k;
invoke-direct {v0, p1}, Lcom/twidroid/net/a/c/a/k;-><init>(Lcom/twidroid/model/twitter/c;)V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/a/k;->a(Z)V
new-instance v2, Lcom/twidroid/net/oauth/a;
invoke-direct {v2, p0}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/a/k;->a(Lcom/ubermedia/net/b/c;)V
iget-object v2, p0, Lcom/twidroid/service/StreamingService;->p:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/a/k;->a(Lcom/twidroid/net/a/c/a/j;)V
sget-object v2, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5b
invoke-direct {p0, v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/net/a/c/a/k;)V
monitor-exit v1
return-void
:catchall_60
move-exception v0
monitor-exit v1
:try_end_62
.catchall {:try_start_1f .. :try_end_62} :catchall_60
throw v0
.end method
.method public a(Lcom/twidroid/net/a/c/a/j;)V
.registers 4
sget-object v0, Lcom/twidroid/service/StreamingService;->q:Ljava/util/concurrent/CopyOnWriteArraySet;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
const-string v0, "StreamingService"
const-string v1, "Added listener"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b(Lcom/twidroid/model/twitter/c;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aR()Z
move-result v0
if-eqz v0, :cond_10
const-string v0, "StreamingService"
const-string v1, "Bg streaming enabled, so no need to stop stream"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
const-string v0, "StreamingService"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Closing stream for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
monitor-enter v1
:try_start_2f
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/a/k;
if-eqz v0, :cond_49
invoke-direct {p0, v0}, Lcom/twidroid/service/StreamingService;->b(Lcom/twidroid/net/a/c/a/k;)V
:goto_44
monitor-exit v1
goto :goto_f
:catchall_46
move-exception v0
monitor-exit v1
:try_end_48
.catchall {:try_start_2f .. :try_end_48} :catchall_46
throw v0
:cond_49
:try_start_49
const-string v0, "StreamingService"
const-string v2, "No stream was found, so nothing to stop"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_50
.catchall {:try_start_49 .. :try_end_50} :catchall_46
goto :goto_44
.end method
.method public b(Lcom/twidroid/net/a/c/a/j;)V
.registers 4
sget-object v0, Lcom/twidroid/service/StreamingService;->q:Ljava/util/concurrent/CopyOnWriteArraySet;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
const-string v0, "StreamingService"
const-string v1, "Removed listener"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public c(Lcom/twidroid/model/twitter/c;)Z
.registers 5
sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/a/d;
if-eqz v0, :cond_24
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->h()Z
move-result v2
if-eqz v2, :cond_24
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->i()Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
monitor-exit v1
:goto_23
return v0
:cond_24
monitor-exit v1
const/4 v0, 0x0
goto :goto_23
:catchall_27
move-exception v0
monitor-exit v1
:try_end_29
.catchall {:try_start_3 .. :try_end_29} :catchall_27
throw v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->m:Landroid/os/IBinder;
return-object v0
.end method
.method public onCreate()V
.registers 4
const-string v1, " + Lcom/twidroid/service/StreamingService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "StreamingService"
const-string v1, "Service created"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->j:Lcom/twidroid/d/v;
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->l:Ljava/util/Timer;
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->r:Lcom/twidroid/service/c;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lcom/twidroid/service/StreamingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->s:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.ubermedia.STREAMING_ACTION"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Lcom/twidroid/service/StreamingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const-string v0, "notification"
invoke-virtual {p0, v0}, Lcom/twidroid/service/StreamingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->k:Landroid/app/NotificationManager;
const-string v1, " - Lcom/twidroid/service/StreamingService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 4
const-string v1, " + Lcom/twidroid/service/StreamingService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->r:Lcom/twidroid/service/c;
invoke-virtual {p0, v0}, Lcom/twidroid/service/StreamingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->s:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lcom/twidroid/service/StreamingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
monitor-enter v1
:try_start_10
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/a/c/a/k;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->g()V
goto :goto_1a
:catchall_2a
move-exception v0
monitor-exit v1
:try_end_2c
.catchall {:try_start_10 .. :try_end_2c} :catchall_2a
throw v0
:try_start_2d
:cond_2d
sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
monitor-exit v1
:try_end_33
.catchall {:try_start_2d .. :try_end_33} :catchall_2a
const-string v0, "StreamingService"
const-string v1, "Service destroyed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->l:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
iget-object v0, p0, Lcom/twidroid/service/StreamingService;->l:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/service/StreamingService;->l:Ljava/util/Timer;
const-string v1, " - Lcom/twidroid/service/StreamingService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
move-result v0
return v0
.end method
.method public onUnbind(Landroid/content/Intent;)Z
.registers 4
const-string v0, "StreamingService"
const-string v1, "All clients was unbind. Good time to stop all streams?"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
move-result v0
return v0
.end method