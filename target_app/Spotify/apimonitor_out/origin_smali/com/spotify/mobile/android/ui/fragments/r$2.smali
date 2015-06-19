.class final Lcom/spotify/mobile/android/ui/fragments/r$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/r;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$2;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$2;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->c(Lcom/spotify/mobile/android/ui/fragments/r;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$2;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->d(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$2;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$2;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->e(Lcom/spotify/mobile/android/ui/fragments/r;)Z

    :cond_1b
    return-void
.end method
