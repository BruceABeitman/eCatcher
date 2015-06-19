.class final Lcom/spotify/mobile/android/ui/fragments/p$18;
.super Landroid/support/v4/view/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    return-void
.end method

.method private static a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;Landroid/database/Cursor;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    const/16 v3, 0x12

    invoke-static {p1, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b:Z

    if-ne v2, v1, :cond_9

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z

    if-ne v3, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 7

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e()I

    move-result v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/p$18;->a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v4, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;I)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/p$18;->a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(I)V

    move v0, v2

    goto :goto_18

    :cond_36
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/p$18;->a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(I)V

    move v0, v3

    goto :goto_18

    :cond_47
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(I)V

    const/4 v0, -0x2

    goto :goto_18
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/p;->c(Lcom/spotify/mobile/android/ui/fragments/p;I)Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    check-cast p3, Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->q(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->q(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final b()I
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget-object v1, v1, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$18;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget-object v1, v1, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_13
    return v0
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    return-void
.end method
