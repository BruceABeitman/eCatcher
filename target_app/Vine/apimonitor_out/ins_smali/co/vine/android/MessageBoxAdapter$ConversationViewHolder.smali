.class  Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;
.super Ljava/lang/Object;
.source "MessageBoxAdapter.java"
.field public avatarUrl:Lco/vine/android/util/image/ImageKey;
.field public color:I
.field public divider:Landroid/view/View;
.field public failedUpload:Landroid/widget/ImageView;
.field public image:Landroid/widget/ImageView;
.field public loadMore:Landroid/widget/FrameLayout;
.field public loadMoreContent:Landroid/view/View;
.field public loadMoreProgress:Landroid/view/View;
.field public retryProgress:Landroid/view/View;
.field public tapToRetry:Landroid/widget/TextView;
.field final synthetic this$0:Lco/vine/android/MessageBoxAdapter;
.field public timestamp:Landroid/widget/TextView;
.field public unreadCount:Landroid/widget/TextView;
.field public username:Landroid/widget/TextView;
.method public constructor <init>(Lco/vine/android/MessageBoxAdapter;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->this$0:Lco/vine/android/MessageBoxAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a010a
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->failedUpload:Landroid/widget/ImageView;
const v0, 0x7f0a0105
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
const v0, 0x7f0a007b
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;
const v0, 0x7f0a0107
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
const v0, 0x7f0a0109
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
const v0, 0x7f0a010c
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMore:Landroid/widget/FrameLayout;
const v0, 0x7f0a0060
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->divider:Landroid/view/View;
const v0, 0x7f0a0108
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->tapToRetry:Landroid/widget/TextView;
const v0, 0x7f0a010b
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->retryProgress:Landroid/view/View;
const v0, 0x7f0a010d
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreContent:Landroid/view/View;
const v0, 0x7f0a00b2
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreProgress:Landroid/view/View;
return-void
.end method