.class public final Lcom/instagram/android/feed/a/b/x;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/android/feed/a/b/ab;

.field private final c:Lcom/instagram/android/feed/a/b/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/android/feed/a/b/ad;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/b/ad;-><init>(Lcom/instagram/android/feed/a/b/x;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/x;->c:Lcom/instagram/android/feed/a/b/ad;

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/x;->b:Lcom/instagram/android/feed/a/b/ab;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_feed_media_media_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;
    .registers 3

    new-instance v1, Lcom/instagram/android/feed/a/b/ac;

    invoke-direct {v1}, Lcom/instagram/android/feed/a/b/ac;-><init>()V

    sget v0, Lcom/facebook/av;->media_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/ac;->a:Landroid/view/ViewGroup;

    sget v0, Lcom/facebook/av;->row_feed_photo_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/widget/a;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    sget v0, Lcom/facebook/av;->row_feed_photo_people_tagging:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    sget v0, Lcom/facebook/av;->row_feed_photo_tags_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/ac;->d:Landroid/widget/Button;

    sget v0, Lcom/facebook/av;->row_feed_video_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/MediaActionsView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    return-object v1
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ad;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/x;->c:Lcom/instagram/android/feed/a/b/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ab;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/x;->b:Lcom/instagram/android/feed/a/b/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/b/x;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/x;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V
    .registers 12

    const/16 v5, 0x8

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/instagram/android/feed/a/b/y;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/instagram/android/feed/a/b/y;-><init>(Lcom/instagram/android/feed/a/b/x;Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    sget v3, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {v2, v3}, Lcom/instagram/feed/widget/a;->getTag(I)Ljava/lang/Object;

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    sget v3, Lcom/facebook/av;->key_list_position:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/feed/widget/a;->setTag(ILjava/lang/Object;)V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    sget v3, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/feed/widget/a;->setTag(ILjava/lang/Object;)V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v2}, Lcom/instagram/feed/widget/a;->clearAnimation()V

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z

    move-result v2

    if-eqz v2, :cond_be

    sget v2, Lcom/instagram/android/widget/o;->e:I

    if-eq p5, v2, :cond_42

    sget v2, Lcom/instagram/android/widget/o;->a:I

    if-eq p5, v2, :cond_42

    sget v2, Lcom/instagram/android/widget/o;->f:I

    if-ne p5, v2, :cond_be

    :cond_42
    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v2, v5}, Lcom/instagram/feed/widget/a;->setVisibility(I)V

    :goto_47
    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v2}, Lcom/instagram/feed/widget/a;->b()V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    new-instance v3, Lcom/instagram/android/feed/a/b/z;

    invoke-direct {v3, p0, p1, p5, p2}, Lcom/instagram/android/feed/a/b/z;-><init>(Lcom/instagram/android/feed/a/b/x;Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;)V

    invoke-virtual {v2, v3}, Lcom/instagram/feed/widget/a;->a(Lcom/instagram/feed/widget/e;)V

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->S()Z

    move-result v2

    if-eqz v2, :cond_c4

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->R()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/feed/widget/a;->setUrl(Ljava/lang/String;)V

    :goto_69
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;

    move-result-object v2

    sget-object v3, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->clearAnimation()V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setVisibility(I)V

    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->V()Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v3}, Lcom/instagram/feed/widget/a;->a()Z

    move-result v3

    if-eqz v3, :cond_8c

    move v0, v1

    :cond_8c
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->V()Z

    move-result v0

    if-eqz v0, :cond_d0

    if-eqz p4, :cond_d0

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0, p2, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/feed/d/l;Z)V

    :goto_a1
    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    invoke-virtual {v0, p5}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    :goto_ae
    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    new-instance v1, Lcom/instagram/android/feed/a/b/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/b/aa;-><init>(Lcom/instagram/android/feed/a/b/x;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setAudioToggleOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->b()V

    return-void

    :cond_be
    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    invoke-virtual {v2, v1}, Lcom/instagram/feed/widget/a;->setVisibility(I)V

    goto :goto_47

    :cond_c4
    iget-object v2, p1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/x;->a:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/feed/widget/a;->setUrl(Ljava/lang/String;)V

    goto :goto_69

    :cond_d0
    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    goto :goto_a1

    :cond_d6
    iget-object v1, p1, Lcom/instagram/android/feed/a/b/ac;->c:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v1, v5}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/instagram/android/feed/a/b/ac;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a1

    :cond_e1
    iget-object v0, p1, Lcom/instagram/android/feed/a/b/ac;->e:Lcom/instagram/android/widget/MediaActionsView;

    sget v1, Lcom/instagram/android/widget/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    goto :goto_ae
.end method
