.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->a(Landroid/content/Context;Z)V

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aC:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$1;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a()V

    return-void
.end method
