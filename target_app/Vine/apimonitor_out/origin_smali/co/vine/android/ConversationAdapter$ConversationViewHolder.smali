.class public Lco/vine/android/ConversationAdapter$ConversationViewHolder;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationViewHolder"
.end annotation


# instance fields
.field public avatarKey:Lco/vine/android/util/image/ImageKey;

.field public final bottomPaddingView:Landroid/view/View;

.field public color:I

.field public final errorMessage:Landroid/widget/TextView;

.field public hasVideoImage:Z

.field public isCurrentUser:Z

.field public isSharedPost:Z

.field public isVideoImageLoaded:Z

.field public final loadImage:Landroid/view/View;

.field public message:Lco/vine/android/api/VinePrivateMessage;

.field public final messageContainer:Landroid/view/ViewGroup;

.field public final messageContainerMessage:Landroid/widget/TextView;

.field public final messageContainerUserImage:Landroid/widget/ImageView;

.field public final nibs:Landroid/view/View;

.field public final nibsChatNib:Landroid/view/View;

.field public position:I

.field public final postMessageContainer:Landroid/view/ViewGroup;

.field public final postMessageContainerMessage:Landroid/widget/TextView;

.field public postNibs:Landroid/view/View;

.field public final secondaryMessageContainer:Landroid/view/View;

.field public final secondaryMessageContainerMessage:Landroid/widget/TextView;

.field public timerOval:Lco/vine/android/drawable/ColoredOvalDrawable;

.field public final timestamp:Landroid/widget/TextView;

.field public final topMessageContainer:Landroid/view/ViewGroup;

.field public final topMessageContainerMessage:Landroid/widget/TextView;

.field public final topMessageContainerUserImage:Landroid/widget/ImageView;

.field public userImageProgressNormal:Landroid/view/View;

.field public userImageProgressTop:Landroid/view/View;

.field public final vanishMessageContainer:Landroid/view/View;

.field public final vanishMessageOverlay:Landroid/widget/TextView;

.field public final vanishPlayButton:Landroid/view/View;

.field public vanishPlayButtonListener:Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;

.field public final vanishThumbnailOverlay:Landroid/view/View;

.field public final vanishTimerText:Landroid/widget/TextView;

.field public final vanishUserImage:Landroid/widget/ImageView;

.field public final videoContainer:Landroid/view/View;

.field public final videoImage:Landroid/widget/ImageView;

.field public videoImageKey:Lco/vine/android/util/image/ImageKey;

.field public videoListener:Lco/vine/android/player/OnListVideoClickListener;

.field public videoView:Lco/vine/android/player/SdkVideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerUserImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerMessage:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerUserImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerMessage:Landroid/widget/TextView;

    const v0, 0x7f0a012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;

    const v0, 0x7f0a00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageOverlay:Landroid/widget/TextView;

    const v0, 0x7f0a012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    const v0, 0x7f0a012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishUserImage:Landroid/widget/ImageView;

    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButton:Landroid/view/View;

    const v0, 0x7f0a0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainerMessage:Landroid/widget/TextView;

    const v0, 0x7f0a013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressNormal:Landroid/view/View;

    const v0, 0x7f0a0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressTop:Landroid/view/View;

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainer:Landroid/view/View;

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainerMessage:Landroid/widget/TextView;

    const v0, 0x7f0a012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const v0, 0x7f0a012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/player/SdkVideoView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const v0, 0x7f0a0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    const v0, 0x7f0a013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    const v0, 0x7f0a013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->bottomPaddingView:Landroid/view/View;

    const v0, 0x7f0a0131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibs:Landroid/view/View;

    const v0, 0x7f0a0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postNibs:Landroid/view/View;

    const v0, 0x7f0a0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    const v0, 0x7f0a0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;

    return-void
.end method
