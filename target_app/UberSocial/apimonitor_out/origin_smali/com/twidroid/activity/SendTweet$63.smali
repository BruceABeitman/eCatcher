.class Lcom/twidroid/activity/SendTweet$63;
.super Lcom/twidroid/net/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$63;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Lcom/twidroid/net/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "FacebookTest"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "send/facebook"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method
