.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Landroid/content/Context;)V

    return-void
.end method
