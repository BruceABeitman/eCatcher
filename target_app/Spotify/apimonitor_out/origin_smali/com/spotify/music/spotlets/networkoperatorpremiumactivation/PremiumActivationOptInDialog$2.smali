.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->finish()V

    return-void
.end method
