.class final Lcom/spotify/mobile/android/spotlets/share/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/share/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/share/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/share/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/a$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_10
    return-void
.end method
