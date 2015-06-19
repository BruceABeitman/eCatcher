.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/tinkerbell/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer$3;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;->b(Lcom/spotify/mobile/android/spotlets/tinkerbell/TooltipContainer;)Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/e;)V

    return-void
.end method
