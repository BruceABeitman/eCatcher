.class final Lcom/spotify/mobile/android/ui/fragments/s$1;
.super Lcom/spotify/mobile/android/ui/adapter/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/s$1;->a:Lcom/spotify/mobile/android/ui/fragments/s;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/x;->a(ILandroid/view/View;Ljava/lang/String;)V

    check-cast p2, Lcom/spotify/android/paste/widget/SectionHeaderView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Z)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
