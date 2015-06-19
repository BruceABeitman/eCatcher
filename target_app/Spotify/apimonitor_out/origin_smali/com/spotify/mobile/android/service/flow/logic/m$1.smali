.class final Lcom/spotify/mobile/android/service/flow/logic/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/m;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/m;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/m;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/service/flow/logic/m;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    sget-object v1, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;->a:Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/service/flow/logic/m;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->D()V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    sget-object v1, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;->b:Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/service/flow/logic/m;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->N:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->E:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    return-void
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    sget-object v1, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;->b:Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/service/flow/logic/m;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m$1;->a:Lcom/spotify/mobile/android/service/flow/logic/m;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->N:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->C:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    return-void
.end method
