.class final Lcom/spotify/mobile/android/ui/fragments/s$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/s$4;->a:Lcom/spotify/mobile/android/ui/fragments/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/model/k;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$4;->a:Lcom/spotify/mobile/android/ui/fragments/s;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->a(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$4;->a:Lcom/spotify/mobile/android/ui/fragments/s;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->b:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    return-void
.end method
