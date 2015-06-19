.class Lco/vine/android/ConversationAdapter$4;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lco/vine/android/player/VideoViewInterface$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConversationAdapter;->initVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;

.field final synthetic val$view:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ConversationAdapter$4;->this$0:Lco/vine/android/ConversationAdapter;

    iput-object p2, p0, Lco/vine/android/ConversationAdapter$4;->val$view:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lco/vine/android/player/VideoViewInterface;II)Z
    .registers 7

    const-string v0, "Got error, try recycling it more aggressively: {}, {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$4;->this$0:Lco/vine/android/ConversationAdapter;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter$4;->val$view:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/ConversationAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
    invoke-static {v0, v1}, Lco/vine/android/ConversationAdapter;->access$700(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter$4;->val$view:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->retryOpenVideo(Z)Z

    const/4 v0, 0x1

    return v0
.end method
