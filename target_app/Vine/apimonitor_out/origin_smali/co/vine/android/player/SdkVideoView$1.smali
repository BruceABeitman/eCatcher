.class Lco/vine/android/player/SdkVideoView$1;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/SdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$1;->this$0:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void
.end method
