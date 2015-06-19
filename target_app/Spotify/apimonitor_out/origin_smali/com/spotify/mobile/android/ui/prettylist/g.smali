.class final Lcom/spotify/mobile/android/ui/prettylist/g;
.super Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/g;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-direct {p0, p2, p3, p4}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Lcom/spotify/mobile/android/ui/prettylist/i;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/g;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Lcom/spotify/mobile/android/ui/prettylist/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/i;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
