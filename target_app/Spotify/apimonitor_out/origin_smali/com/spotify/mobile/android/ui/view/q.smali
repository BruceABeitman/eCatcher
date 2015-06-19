.class final Lcom/spotify/mobile/android/ui/view/q;
.super Lcom/spotify/mobile/android/ui/view/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/p;-><init>(B)V

    const v0, 0x7f0a0258

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    const v0, 0x7f0a0366

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/q;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_20
    move v0, v2

    :goto_21
    invoke-static {v3, v4, v5, v0}, Lcom/spotify/mobile/android/ui/view/q;->a(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/q;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v5

    if-eqz v5, :cond_43

    :cond_42
    move v1, v2

    :cond_43
    invoke-static {v0, v3, v4, v1}, Lcom/spotify/mobile/android/ui/view/q;->a(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    :cond_47
    move v0, v1

    goto :goto_21
.end method

.method public final b()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/q;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
