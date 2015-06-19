.class final Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->onFinishInflate()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)Lcom/spotify/mobile/android/ui/view/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)Lcom/spotify/mobile/android/ui/view/g;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)Lcom/spotify/android/paste/widget/SwitchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/g;->a(Z)V

    :cond_1b
    return-void
.end method
