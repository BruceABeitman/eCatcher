.class final Lcom/spotify/mobile/android/ui/view/r;
.super Lcom/spotify/mobile/android/ui/view/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/r;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/p;-><init>(B)V

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/r;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/view/r;->a(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/r;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
