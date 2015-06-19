.class final Lcom/spotify/mobile/android/service/flow/login/t$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$23;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$23;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->s(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a()V

    return-void
.end method
