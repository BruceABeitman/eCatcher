.class Lco/vine/android/player/OldSdkVideoView$7;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/OldSdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$7;->this$0:Lco/vine/android/player/OldSdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$7;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #setter for: Lco/vine/android/player/OldSdkVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lco/vine/android/player/OldSdkVideoView;->access$1902(Lco/vine/android/player/OldSdkVideoView;I)I

    return-void
.end method
