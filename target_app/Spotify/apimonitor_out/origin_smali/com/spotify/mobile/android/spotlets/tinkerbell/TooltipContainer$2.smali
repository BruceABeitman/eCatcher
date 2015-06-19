.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$2;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->c()V

    return-void
.end method
