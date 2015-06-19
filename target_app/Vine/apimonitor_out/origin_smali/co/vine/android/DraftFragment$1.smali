.class Lco/vine/android/DraftFragment$1;
.super Ljava/lang/Object;
.source "DraftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/DraftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/DraftFragment;


# direct methods
.method constructor <init>(Lco/vine/android/DraftFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/DraftFragment$1;->this$0:Lco/vine/android/DraftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/DraftFragment$1;->this$0:Lco/vine/android/DraftFragment;

    #getter for: Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
    invoke-static {v0}, Lco/vine/android/DraftFragment;->access$000(Lco/vine/android/DraftFragment;)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/DraftFragment$1;->this$0:Lco/vine/android/DraftFragment;

    iget-boolean v0, v0, Lco/vine/android/DraftFragment;->mCanUnhide:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/DraftFragment$1;->this$0:Lco/vine/android/DraftFragment;

    #getter for: Lco/vine/android/DraftFragment;->mVideoView:Lco/vine/android/player/SdkVideoView;
    invoke-static {v0}, Lco/vine/android/DraftFragment;->access$000(Lco/vine/android/DraftFragment;)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    :cond_1c
    return-void
.end method
