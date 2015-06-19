.class final Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->E()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const-string v0, "Closing"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->l()Landroid/support/v4/app/r;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->p()Z

    move-result v1

    if-nez v1, :cond_25

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$3;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->c()I

    :cond_25
    return-void
.end method
