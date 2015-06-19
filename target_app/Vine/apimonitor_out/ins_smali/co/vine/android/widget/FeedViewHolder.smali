.class public Lco/vine/android/widget/FeedViewHolder;
.super Lco/vine/android/widget/GenericFeedViewHolder;
.source "FeedViewHolder.java"
.field public listener:Lco/vine/android/player/OnListVideoClickListener;
.field public videoImage:Landroid/widget/ImageView;
.field public videoView:Lco/vine/android/player/SdkVideoView;
.method public constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/widget/GenericFeedViewHolder;-><init>(Landroid/view/View;)V
const v0, 0x7f0a012b
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/widget/FeedViewHolder;->videoImage:Landroid/widget/ImageView;
return-void
.end method
.method public getViewForVideoImage()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FeedViewHolder;->videoImage:Landroid/widget/ImageView;
return-object v0
.end method