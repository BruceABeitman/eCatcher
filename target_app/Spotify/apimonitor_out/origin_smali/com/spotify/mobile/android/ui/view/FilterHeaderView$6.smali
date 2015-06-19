.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->m(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    :cond_7
    return-void
.end method
