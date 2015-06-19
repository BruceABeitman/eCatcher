.class final Lcom/spotify/mobile/android/spotlets/artist/view/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b(Lcom/spotify/mobile/android/spotlets/artist/view/a;)Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/b;->a(Z)V

    return-void
.end method
