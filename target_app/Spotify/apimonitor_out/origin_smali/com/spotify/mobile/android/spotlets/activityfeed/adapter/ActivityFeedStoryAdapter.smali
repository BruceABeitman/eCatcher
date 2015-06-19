.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;


# instance fields
.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->values()[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const v1, 0x7f030038

    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->b:I

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->c:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->g:I

    return-void
.end method

.method private static a(Landroid/view/View;I)Landroid/view/View;
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private static a(Landroid/view/View;IIII)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getViewTypeCount()I

    move-result v0

    div-int v0, p1, v0

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    return-object v0
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->h:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->h:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public final b(I)Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getItemViewType(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getCount()I
    .registers 3

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getViewTypeCount()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(I)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getViewTypeCount()I

    move-result v0

    div-int v0, p1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getViewTypeCount()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->b(I)Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(I)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p2, :cond_f5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->b:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$2;->a:[I

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_29c

    const/4 v1, 0x0

    :goto_32
    if-eqz v1, :cond_3d

    const v2, 0x7f0a011b

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3d
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_40
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object v2, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$2;->a:[I

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2aa

    :goto_4e
    :pswitch_4e
    return-object p2

    :pswitch_4f
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p2, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->f:I

    invoke-static {v1, v2, v5, v6, v7}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v1

    goto :goto_32

    :pswitch_7b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f010194

    invoke-static {v2, v1, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->f:I

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->f:I

    invoke-static {v1, v2, v5, v6, v7}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v1

    goto :goto_32

    :pswitch_9c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->g:I

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->f:I

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object v1, v2

    goto/16 :goto_32

    :pswitch_cc
    new-instance v1, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-direct {v1, v2}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_32

    :pswitch_d3
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p2, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f010197

    invoke-static {v2, v1, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto/16 :goto_32

    :cond_f5
    const v0, 0x7f0a0251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a011b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_40

    :pswitch_10a
    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getAuthor()Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getImage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b003e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0b003f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-class v1, Lcom/spotify/mobile/android/util/df;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lcom/squareup/picasso/ad;->b(II)Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->a(Ljava/lang/String;J)V

    goto/16 :goto_4e

    :pswitch_15b
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_175

    const/16 v1, 0x8

    :goto_170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4e

    :cond_175
    const/4 v1, 0x0

    goto :goto_170

    :pswitch_177
    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->h:Z

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getIsPlaying()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v3

    sget-object v5, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    if-ne v3, v5, :cond_21f

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->h:Z

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const v1, 0x7f0a013c

    new-instance v3, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v1, v3, v2}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    :goto_1c7
    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    if-ne v1, v3, :cond_224

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f02e4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getSubName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    :goto_1eb
    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    if-ne v1, v3, :cond_22c

    invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;

    move-result-object v1

    :goto_1fb
    sget-object v3, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$2;->b:[I

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2b8

    goto/16 :goto_4e

    :pswitch_210
    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getImage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2, v3, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V

    goto/16 :goto_4e

    :cond_21f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    goto :goto_1c7

    :cond_224
    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getSubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    goto :goto_1eb

    :cond_22c
    const/4 v1, 0x0

    goto :goto_1fb

    :pswitch_22e
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getCount()I

    move-result v2

    if-lez v2, :cond_287

    const/4 v2, 0x1

    :goto_23b
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getCount()I

    move-result v1

    if-lez v1, :cond_289

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    invoke-static {v1, v2, v3, v5, v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;IIII)Landroid/view/View;

    :goto_258
    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getCount()I

    move-result v1

    if-lez v1, :cond_299

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4e

    :cond_287
    const/4 v2, 0x0

    goto :goto_23b

    :cond_289
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    const/4 v3, 0x0

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->e:I

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Landroid/view/View;IIII)Landroid/view/View;

    goto :goto_258

    :cond_299
    const-string v1, ""

    goto :goto_282

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_7b
        :pswitch_9c
        :pswitch_cc
        :pswitch_d3
    .end packed-switch

    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_15b
        :pswitch_4e
        :pswitch_177
        :pswitch_22e
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_210
        :pswitch_210
        :pswitch_210
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a:[Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    array-length v0, v0

    return v0
.end method
