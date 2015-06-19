.class public Lco/vine/android/widget/SingleExploreFeedViewHolder;
.super Lco/vine/android/widget/GenericFeedViewHolder;
.source "SingleExploreFeedViewHolder.java"


# instance fields
.field public final videoView:Lco/vine/android/player/OldSdkVideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/widget/GenericFeedViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/player/OldSdkVideoView;

    iput-object v0, p0, Lco/vine/android/widget/SingleExploreFeedViewHolder;->videoView:Lco/vine/android/player/OldSdkVideoView;

    return-void
.end method


# virtual methods
.method public getViewForVideoImage()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/SingleExploreFeedViewHolder;->videoView:Lco/vine/android/player/OldSdkVideoView;

    return-object v0
.end method
