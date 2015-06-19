.class public final Lcom/spotify/mobile/android/ui/page/a/e;
.super Lcom/spotify/mobile/android/ui/page/a/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/e;->b(I)V

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a/e;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0f02d7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "liked"

    return-object v0
.end method
