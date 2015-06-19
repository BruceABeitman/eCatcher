.class final Lcom/spotify/android/paste/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/widget/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/widget/j;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/android/paste/widget/j;-><init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/spotify/android/paste/widget/j;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/l;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/spotify/android/paste/widget/j;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_23

    iget-object v1, p0, Lcom/spotify/android/paste/widget/j;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->c(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    :cond_22
    return-void

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
