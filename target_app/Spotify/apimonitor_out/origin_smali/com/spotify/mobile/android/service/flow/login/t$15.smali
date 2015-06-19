.class final Lcom/spotify/mobile/android/service/flow/login/t$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$15;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$15;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
