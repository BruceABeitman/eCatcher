.class final Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->requestLayout()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/StickyHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->d(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
