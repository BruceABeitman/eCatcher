.class public Lco/vine/android/widget/ActivityViewHolder;
.super Ljava/lang/Object;
.source "ActivityViewHolder.java"


# static fields
.field public static final TYPE_COMMENT_LIST:I = 0x3

.field public static final TYPE_POST:I = 0x1

.field public static final TYPE_USER:I = 0x0

.field public static final TYPE_USER_LIST:I = 0x2


# instance fields
.field public anchor:J

.field public avatar:Landroid/widget/ImageView;

.field public avatarImageKey:Lco/vine/android/util/image/ImageKey;

.field public clickable:Z

.field public contentLine:Landroid/widget/TextView;

.field public dateLine:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public followButton:Landroid/view/View;

.field public headerText:Landroid/widget/TextView;

.field public headerView:Landroid/view/View;

.field public listItemClickType:I

.field public milestoneBackground:Landroid/widget/ImageView;

.field public milestoneBackgroundImageKey:Lco/vine/android/util/image/ImageKey;

.field public milestoneDescription:Landroid/widget/TextView;

.field public milestoneIcon:Landroid/widget/ImageView;

.field public milestoneIconImageKey:Lco/vine/android/util/image/ImageKey;

.field public milestoneImage:Landroid/widget/ImageView;

.field public milestoneImageFrame:Landroid/widget/ImageView;

.field public milestoneImageImageKey:Lco/vine/android/util/image/ImageKey;

.field public milestoneOverlay:Landroid/view/View;

.field public milestoneTitle:Landroid/widget/TextView;

.field public notificationId:J

.field public postId:J

.field public thumbnail:Landroid/widget/ImageView;

.field public thumbnailImageKey:Lco/vine/android/util/image/ImageKey;

.field public typeIcon:Landroid/widget/ImageView;

.field public userId:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/ActivityViewHolder;->clickable:Z

    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->avatar:Landroid/widget/ImageView;

    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->followButton:Landroid/view/View;

    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    const v0, 0x7f0a0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->dateLine:Landroid/widget/TextView;

    const v0, 0x7f0a006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneOverlay:Landroid/view/View;

    const v0, 0x7f0a006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneImage:Landroid/widget/ImageView;

    const v0, 0x7f0a006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneImageFrame:Landroid/widget/ImageView;

    const v0, 0x7f0a006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->milestoneDescription:Landroid/widget/TextView;

    const v0, 0x7f0a005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->headerView:Landroid/view/View;

    const v0, 0x7f0a005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->headerText:Landroid/widget/TextView;

    const v0, 0x7f0a0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/ActivityViewHolder;->divider:Landroid/view/View;

    return-void
.end method
