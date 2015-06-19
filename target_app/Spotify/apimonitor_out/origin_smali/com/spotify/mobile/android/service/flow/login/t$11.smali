.class final Lcom/spotify/mobile/android/service/flow/login/t$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$11;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$11;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->b(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    return-void
.end method
