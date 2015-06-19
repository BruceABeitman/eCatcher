.class final Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->d(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Lcom/spotify/mobile/android/util/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->c(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/d/e;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->finish()V

    return-void
.end method
