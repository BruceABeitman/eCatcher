.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/stuff/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    if-ne p2, v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    const v1, 0x7f0f039d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    goto :goto_2a
.end method
