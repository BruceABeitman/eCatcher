.class final Lcom/spotify/mobile/android/service/flow/login/t$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0107

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$21;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
