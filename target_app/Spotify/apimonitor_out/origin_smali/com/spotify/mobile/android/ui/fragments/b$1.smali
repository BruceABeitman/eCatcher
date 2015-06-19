.class final Lcom/spotify/mobile/android/ui/fragments/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b$1;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$1;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/b;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
