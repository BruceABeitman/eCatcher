.class final Lcom/spotify/mobile/android/service/flow/login/t$20$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t$20;->a(ILjava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t$20;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t$20;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$20$2;->a:Lcom/spotify/mobile/android/service/flow/login/t$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$20$2;->a:Lcom/spotify/mobile/android/service/flow/login/t$20;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/t$20;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V

    return-void
.end method
