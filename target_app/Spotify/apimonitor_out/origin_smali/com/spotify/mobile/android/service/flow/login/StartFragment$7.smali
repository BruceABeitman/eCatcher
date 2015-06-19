.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V

    return-void
.end method
