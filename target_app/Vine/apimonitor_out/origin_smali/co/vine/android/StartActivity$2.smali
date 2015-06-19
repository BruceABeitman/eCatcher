.class Lco/vine/android/StartActivity$2;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lco/vine/android/player/VideoViewInterface$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/StartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/StartActivity;


# direct methods
.method constructor <init>(Lco/vine/android/StartActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/StartActivity$2;->this$0:Lco/vine/android/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lco/vine/android/player/VideoViewInterface;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/StartActivity$2;->this$0:Lco/vine/android/StartActivity;

    invoke-virtual {v0}, Lco/vine/android/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lco/vine/android/util/SystemUtil;->setNormalVideoPlayable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lco/vine/android/StartActivity$2;->this$0:Lco/vine/android/StartActivity;

    #getter for: Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;
    invoke-static {v0}, Lco/vine/android/StartActivity;->access$200(Lco/vine/android/StartActivity;)Lco/vine/android/player/VideoViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->start()V

    const-string v0, "Video test completed, assuming success, may change later."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    return-void
.end method
