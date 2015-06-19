.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Landroid/content/Context;)V

    return-void
.end method
