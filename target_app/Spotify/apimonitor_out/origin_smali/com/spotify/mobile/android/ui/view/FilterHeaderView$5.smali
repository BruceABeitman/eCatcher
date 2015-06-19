.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/16 v0, 0x42

    if-eq p2, v0, :cond_8

    const/16 v0, 0x10

    if-ne p2, v0, :cond_f

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
