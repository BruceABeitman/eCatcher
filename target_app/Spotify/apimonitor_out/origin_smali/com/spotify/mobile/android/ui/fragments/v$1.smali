.class final Lcom/spotify/mobile/android/ui/fragments/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/v;->c()Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/v;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/v;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/v;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/v;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/v;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/v;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
