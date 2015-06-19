.class final Lcom/instagram/android/feed/a/a/g;
.super Landroid/os/Handler;
.source "FeedPeopleTagModule.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/android/feed/a/a/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4b

    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/android/feed/a/a/f;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/android/feed/a/a/f;)Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v1

    if-ne v0, v1, :cond_4b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/android/feed/a/a/f;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/android/feed/a/a/f;)Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/a/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    sget v1, Lcom/facebook/av;->row_feed_photo_tags_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/av;->row_feed_photo_people_tagging:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/android/feed/a/a/f;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/f;->b(Lcom/instagram/android/feed/a/a/f;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/g;->a:Lcom/instagram/android/feed/a/a/f;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/f;->a(Lcom/instagram/android/feed/a/a/f;Landroid/view/View;)V

    :cond_4b
    return-void
.end method
