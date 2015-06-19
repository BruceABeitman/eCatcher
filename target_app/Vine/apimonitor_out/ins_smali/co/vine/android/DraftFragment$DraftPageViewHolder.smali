.class public Lco/vine/android/DraftFragment$DraftPageViewHolder;
.super Ljava/lang/Object;
.source "DraftFragment.java"
.field public containerView:Landroid/view/ViewGroup;
.field public draftContainer:Landroid/widget/RelativeLayout;
.field public progressView:Lco/vine/android/recorder/ProgressView;
.field public thumb:Landroid/widget/ImageView;
.field public videoUrl:Ljava/lang/String;
.field public videoView:Lco/vine/android/player/SdkVideoView;
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a0075
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/player/SdkVideoView;
iput-object v0, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;
iput-object p2, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->videoUrl:Ljava/lang/String;
const v0, 0x7f0a00d6
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->containerView:Landroid/view/ViewGroup;
const v0, 0x7f0a00b2
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/ProgressView;
iput-object v0, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->progressView:Lco/vine/android/recorder/ProgressView;
const v0, 0x7f0a00d8
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->thumb:Landroid/widget/ImageView;
const v0, 0x7f0a00d5
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lco/vine/android/DraftFragment$DraftPageViewHolder;->draftContainer:Landroid/widget/RelativeLayout;
return-void
.end method