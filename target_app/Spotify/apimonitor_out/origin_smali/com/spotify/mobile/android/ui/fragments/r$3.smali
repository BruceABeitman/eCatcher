.class final Lcom/spotify/mobile/android/ui/fragments/r$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/r;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$3;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    if-eq p1, v0, :cond_1c

    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$3;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$3;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/k;->a(I)V

    :cond_1c
    return-void
.end method
